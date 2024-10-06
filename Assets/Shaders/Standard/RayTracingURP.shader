Shader "Custom/RayTracing"
{
    Properties {

    }
    SubShader
    {
        Cull Off ZWrite Off ZTest Always
        
        Pass
        {
            Name "DepthOnly"
            
            Tags { "LightMode" = "DepthOnly" "RenderPipeline" = "UniversalPipeline" }
            
            CGPROGRAM

            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #define FLT_MAX 3.402823466e+38
            #define PI 3.141592

            struct appdata_t
            {
                float4 vertex : POSITION;
                float2 texcoord : TEXCOORD0;
            };

            struct v2f
            {
                float2 texcoord : TEXCOORD0;
                float4 vertex : SV_POSITION;
            };

            v2f vert(const appdata_t v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.texcoord = v.texcoord;
                return o;
            }

            // ------------- Structs -------------
            struct Ray
            {
                float3 origin;
                float3 dir;
            };

            struct RayTracingMaterial
            {
                float4 color;
                float4 emissionColor;
                float4 specularColor;
                float emissionStrength;
                float smoothness;
                float specularProbability;
            };

            struct Triangle
            {
                float3 posA;
                float3 posB;
                float3 posC;
                float3 normalA;
                float3 normalB;
                float3 normalC;
                float3 center;
            };

            struct MeshInfo
            {
                uint firstTriangleIndex;
                uint numTriangles;
                RayTracingMaterial material;
                float3 boundsMin;
                float3 boundsMax;
            };

            struct BoundingBox
            {
                float3 Max;
                float3 Min;
                float3 Center;
                float3 Size;
            };

            struct Node
            {
                int ChildIndex;
                int TriangleIndex;
                int TrianglesCount;
                float3 BoundsMin;
                float3 BoundsMax;
            };

            struct HitInfo
            {
                bool didHit;
                float dst;
                float3 hitPoint;
                float3 normal;
                RayTracingMaterial material;
            };

            struct TriangleHitInfo
			{
				bool didHit;
				float dst;
				float3 hitPoint;
				float3 normal;
				int triIndex;
                RayTracingMaterial material;
                int triCount;
			};
            
            // ------------- Variables -------------
            float4 SkyColorHorizon;
            float4 SkyColorZenith;
            float4 GroundColor;
            
            float SunFocus;
            float SunIntensity;

            float3 ViewParams;
            float4x4 CamLocalToWorldMatrix;

            int MaxBounceCount;
            int NumRaysPerPixel;
            int NumRenderedFrames;
            
            float DivergeStrength;
            float DefocusStrength;
            float RenderDistance;

            float BlackRayTolerance;

            StructuredBuffer<Triangle> TriangleBuffer;
            StructuredBuffer<Node> Nodes;
            StructuredBuffer<MeshInfo> AllMeshInfo;
            int NumMeshes;
            int NumTriangles;
            
            StructuredBuffer<float3> AllLightSources;
            int NumLights;
            
            int UseEnvironment;
            
            int DebugView;
            int DebugViewMode;

            float BoxDisplayThreshold;
            float TriangleDisplayThreshold;

            int2 stats;

            // ------------- Ray Intersection Functions -------------
            float RandomValue(inout uint state)
            {
                state = state * 747796405 + 2891336453;
                uint result = (state >> (state >> 28) + 4 ^ state) * 277803737;
                result = result >> 22 ^ result;
                return result / 4294967295.0;
            }

            float RandomValueNormalDistribution(inout uint state)
            {
                const float theta = 2 * 3.1415296 * RandomValue(state);
                const float rho = sqrt(-2 * log(RandomValue(state)));
                return rho * cos(theta);
            }

            float2 RandomPointInCircle(inout uint rngState)
            {
                float angle = RandomValue(rngState) * 2 * PI;
                float2 pointOnCircle = float2(cos(angle), sin(angle));
                return pointOnCircle * sqrt(RandomValue(rngState));
            }

            float3 RandomDirection(inout uint state)
            {
                float x = RandomValueNormalDistribution(state);
                float y = RandomValueNormalDistribution(state);
                float z = RandomValueNormalDistribution(state);
                const float3 pointInCube = float3(x, y, z);
                return normalize(pointInCube);
            }

            HitInfo RaySphere(const Ray ray, const float3 sphereCenter, const float sphereRadius)
            {
                HitInfo hitInfo = (HitInfo)0;
                const float3 offsetPos = ray.origin - sphereCenter;

                const float a = dot(ray.dir, ray.dir);
                const float b = 2 * dot(offsetPos, ray.dir);
                const float c = dot(offsetPos, offsetPos) - sphereRadius * sphereRadius;

                const float delta = b * b - 4 * a * c;

                if (delta >= 0)
                {
                    const float dst = (-b - sqrt(delta)) / (2 * a);

                    if (dst >= 0)
                    {
                        hitInfo.didHit = true;
                        hitInfo.dst = dst;
                        hitInfo.hitPoint = ray.origin + ray.dir * dst;
                        hitInfo.normal = normalize(hitInfo.hitPoint - sphereCenter);
                    }
                }

                return hitInfo;
            }

            TriangleHitInfo RayTriangle(Ray ray, Triangle tri)
			{
				TriangleHitInfo info;
                info.didHit = false;
                
                float3 vertex0 = tri.posA;
                float3 vertex1 = tri.posB;
                float3 vertex2 = tri.posC;
                float3 edge1;
                float3 edge2;
                float3 h;
                float3 s;
                float3 q;

                const float EPSILON = 1E-8f;
                
                edge1 = vertex1 - vertex0;
                edge2 = vertex2 - vertex0;
                h = cross(ray.dir, edge2);
                float a = dot(edge1, h);

                if (a > -EPSILON && a < EPSILON) return info; // This ray is parallel to this triangle.

                float f = 1.0 / a;
                s = ray.origin - vertex0;
                float u = f * dot(s, h);

                if (u < 0.0 || u > 1.0) return info;

                q = cross(s, edge1);
                float v = f * dot(ray.dir, q);

                if (v < 0.0 || u + v > 1.0) return info;

                // At this stage we can compute t to find out where the intersection point is on the line.
                float t = f * dot(edge2, q);
                if (t > EPSILON) // ray intersection
                {
                    float3 edgeAB = tri.posB - tri.posA;
                    float3 edgeAC = tri.posC - tri.posA;
                    float3 normalVector = normalize(cross(edgeAB, edgeAC));

                    float dst = distance(tri.center, ray.origin);

                    info.didHit = true;
                    info.hitPoint = ray.origin + ray.dir * dst;
                    info.normal = normalVector;
                    info.dst = dst;
                    
                    return info;
                } // This means that there is a line intersection but not a ray intersection.

                return info;
			}

            bool RayBoundingBox(Ray ray, float3 boxMin, float3 boxMax)
			{
                float tmin = 0.0, tmax = FLT_MAX;

                for (int d = 0; d < 3; ++d) {
                    float t1 = (boxMin[d] - ray.origin[d]) * (1 / ray.dir[d]);
                    float t2 = (boxMax[d] - ray.origin[d]) * (1 / ray.dir[d]);

                    tmin = max(tmin, min(t1, t2));
                    tmax = min(tmax, max(t1, t2));
                }

                return tmin < tmax;
			};

            float RayBoundingBoxDst(Ray ray, float3 boxMin, float3 boxMax)
			{
				float tmin = 0.0, tmax = FLT_MAX;

                for (int d = 0; d < 3; ++d) {
                    float t1 = (boxMin[d] - ray.origin[d]) * (1 / ray.dir[d]);
                    float t2 = (boxMax[d] - ray.origin[d]) * (1 / ray.dir[d]);

                    tmin = max(tmin, min(t1, t2));
                    tmax = min(tmax, max(t1, t2));
                }

                const bool hit = tmin < tmax;
                const float dst = hit ? tmin > 0 ? tmin : 0 : FLT_MAX;
				return dst;
			}

            TriangleHitInfo RayTriangleTest(const Ray ray)
            {
                int stack[32];
                int stackIndex = 0;
                stack[stackIndex++] = 0;

                TriangleHitInfo result;
                result.dst = FLT_MAX;
                result.didHit = false;

                while (stackIndex > 0)
                {
                    const Node node = Nodes[stack[--stackIndex]];
                    
                    //stats[0]++;
                    //if (RayBoundingBoxDst(ray, node.BoundsMin, node.BoundsMax) < result.dst)
                    {
                        if (node.ChildIndex == 0)
                        {
                            stats[1] += node.TrianglesCount;
                            for (int i = node.TriangleIndex; i < node.TriangleIndex + node.TrianglesCount; i++)
                            {
                                const TriangleHitInfo triHitInfo = RayTriangle(ray, TriangleBuffer[i]);
                                if (triHitInfo.dst < result.dst && triHitInfo.didHit)
                                {
                                    result.didHit = triHitInfo.didHit;
                                    result.hitPoint = triHitInfo.hitPoint;
                                    result.normal = triHitInfo.normal;
                                    result.dst = triHitInfo.dst;
                                }
                            }
                        } else {
                            const Node childA = Nodes[node.ChildIndex + 0];
                            const Node childB = Nodes[node.ChildIndex + 1];

                            const float dstA = RayBoundingBoxDst(ray, childA.BoundsMin, childA.BoundsMax);
                            const float dstB = RayBoundingBoxDst(ray, childB.BoundsMin, childB.BoundsMax);
                            stats[0] += 2;

                            if (dstA > dstB)
                            {
                                if (dstA < result.dst) stack[stackIndex++] = node.ChildIndex;
                                if (dstB < result.dst) stack[stackIndex++] = node.ChildIndex + 1;
                            }
                            else
                            {
                                if (dstB < result.dst) stack[stackIndex++] = node.ChildIndex + 1;
                                if (dstA < result.dst) stack[stackIndex++] = node.ChildIndex;
                            }
                        }
                    }
                }
                
                return result;
            }

            TriangleHitInfo CalculateRayCollision(const Ray ray, inout int numTests)
            {
                TriangleHitInfo closestHit = (TriangleHitInfo)0;
                closestHit.dst = FLT_MAX;

                // Raycast against all meshes and keep info about the closest hit
				for (int meshIndex = 0; meshIndex < NumMeshes; meshIndex ++)
				{
					MeshInfo meshInfo = AllMeshInfo[meshIndex];
				    if (!RayBoundingBox(ray, meshInfo.boundsMin, meshInfo.boundsMax)) {
						continue;
					}

					for (uint i = 0; i < meshInfo.numTriangles; i ++) {
						int triIndex = meshInfo.firstTriangleIndex + i;
						Triangle tri = TriangleBuffer[triIndex];
						TriangleHitInfo hitInfo = RayTriangle(ray, tri);
					    numTests++;
	
						if (hitInfo.didHit && hitInfo.dst < closestHit.dst)
						{
							closestHit = hitInfo;
							closestHit.material = meshInfo.material;
						}
					}
				}

                return closestHit;
            }

            float3 GetEnvironmentLight(Ray ray)
            {
                float skyGradientT = pow(smoothstep(0, 0.4, ray.dir.y), 0.35);
                float groundToSkyT = smoothstep(-0.01, 0, ray.dir.y);
                float3 skyGradient = lerp(SkyColorHorizon, SkyColorZenith, skyGradientT);
                float sun = pow(max(0, dot(ray.dir, _WorldSpaceLightPos0.xyz)), SunFocus) * SunIntensity;
                // Combine ground, sky, and sun
                float3 composite = lerp(GroundColor, skyGradient, groundToSkyT) + sun * (groundToSkyT >= 1);
                return composite;
            }

            float3 RayDebugView(Ray ray)
            {
                TriangleHitInfo hitInfo = RayTriangleTest(ray);

                float boxDisplay = stats[0] / BoxDisplayThreshold;
                float triangleDisplay = stats[0] / TriangleDisplayThreshold;

                switch (DebugViewMode)
                {
                    case 0:
                        return (hitInfo.normal * 0.5 + 0.5) * hitInfo.didHit;
                    case 1:
                        return boxDisplay < 1 ? boxDisplay : float3(1, 0, 0);
                    case 2:
                        return triangleDisplay < 1 ? triangleDisplay : float3(1, 0, 0);
                    default:
                        return float3(1, 0, 1);
                }
            }

            float3 Trace(Ray ray, inout uint rngState)
            {
                float3 incomingLight = 0;
                float3 rayColor = 1;
                int numTests = 0;
                TriangleHitInfo hitInfo;

                for (int i = 0; i <= MaxBounceCount; i++)
                {
                    hitInfo = CalculateRayCollision(ray, numTests);
                    const RayTracingMaterial material = hitInfo.material;

                    if (hitInfo.didHit && hitInfo.dst <= RenderDistance)
                    {
                        hitInfo = CalculateRayCollision(ray, numTests);
                        
                        ray.origin = hitInfo.hitPoint;
                        float3 diffuseDir = normalize(hitInfo.normal + RandomDirection(rngState));
                        float3 specularDir = reflect(ray.dir, hitInfo.normal);

                        if (i == MaxBounceCount - 1 && NumLights > 0)
                        {
                            for (int j = 0; j < NumLights; j++)
                            {
                                Ray tempRay;
                                tempRay.origin = ray.origin;
                                tempRay.dir = normalize(AllLightSources[j] - ray.origin);

                                TriangleHitInfo lightHitInfo;
                                lightHitInfo.dst = 0;
                                lightHitInfo.hitPoint = float3(0, 0, 0);

                                const TriangleHitInfo tempHitInfo = CalculateRayCollision(tempRay, numTests);
                                if (tempHitInfo.material.emissionStrength != 0)
                                {
                                    if (tempHitInfo.dst < lightHitInfo.dst)
                                    {
                                        lightHitInfo = tempHitInfo;
                                    }
                                }

                                specularDir = lightHitInfo.hitPoint - ray.origin;
                            }
                        }
                        
                        bool isSpecularBounce = material.specularProbability >= RandomValue(rngState);
                        ray.dir = lerp(diffuseDir, specularDir, material.smoothness * isSpecularBounce);
                        
                        float3 emittedLight = material.emissionColor * material.emissionStrength;
                        incomingLight += emittedLight * rayColor;
                        rayColor *= lerp(material.color, material.specularColor, isSpecularBounce);
                        if (material.emissionStrength > 0) break;
                    }
                    else
                    {
                        if (UseEnvironment == 1) incomingLight += GetEnvironmentLight(ray) * rayColor;
                        break;
                    }
                }

                return incomingLight;
            }
            
            float4 frag(const v2f i) : SV_Target {
                uint2 numPixels = _ScreenParams.xy;
                uint2 pixelCoord = i.texcoord * numPixels;
                const uint pixelIndex = pixelCoord.y * numPixels.x + pixelCoord.x;
                uint rngState = pixelIndex + NumRenderedFrames * 719393 - NumRenderedFrames * 6814;
                
                float3 viewPointLocal = float3(i.texcoord - 0.5, 1) * ViewParams;
                const float3 viewPoint = mul(CamLocalToWorldMatrix, float4(viewPointLocal, 1));
                float3 camRight = CamLocalToWorldMatrix._m00_m10_m20;
                float3 camUp = CamLocalToWorldMatrix._m01_m11_m21;

                float3 totalIncomingLight = 0;

                for (int rayIndex = 0; rayIndex < NumRaysPerPixel; rayIndex++)
                {
                    Ray ray;
                    float2 defocusJitter  = RandomPointInCircle(rngState) * DefocusStrength / numPixels.x;
                    ray.origin = DebugView == 1 ?
                        _WorldSpaceCameraPos + camRight * defocusJitter.x + camUp * defocusJitter.y : _WorldSpaceCameraPos;
                    float2 jitter = RandomPointInCircle(rngState) * DivergeStrength / numPixels.x;
                    float3 jitteredViewPoint = DebugView == 1 ? viewPoint + camRight * jitter.x + camUp * jitter.y : viewPoint;
                    ray.dir = normalize(jitteredViewPoint - ray.origin);
                    
                    totalIncomingLight += DebugView == 1 ? RayDebugView(ray) : Trace(ray, rngState);
                }

                float3 pixelColor = totalIncomingLight / NumRaysPerPixel;
                return float4(pixelColor, 1);
            }
            ENDCG
        }
    }
}