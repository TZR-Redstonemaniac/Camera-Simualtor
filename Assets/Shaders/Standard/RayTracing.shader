Shader "Custom/RayTracing"
{
    Properties {

    }
    SubShader
    {
        Pass
        {
            CGPROGRAM
            // Upgrade NOTE: excluded shader from DX11, OpenGL ES 2.0 because it uses unsized arrays
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

            struct Sphere
            {
                float3 position;
                float radius;
                RayTracingMaterial material;
            };

            struct Triangle
            {
                float3 posA, posB, posC;
                float3 normalA, normalB, normalC;
            };

            struct MeshInfo
            {
                uint firstTriangleIndex;
                uint numTriangles;
                RayTracingMaterial material;
            };

            struct HitInfo
            {
                bool didHit;
                float dst;
                float3 hitPoint;
                float3 normal;
                RayTracingMaterial material;
            };
            
            // ------------- Variables -------------
            float4 SkyColorHorizon;
            float4 SkyColorZenith;
            float4 GroundColor;
            
            float SunFocus;
            float SunIntensity;

            float3 ViewParams;
            float4x4 CamLocalToWorldMatrix;
            
            StructuredBuffer<Sphere> Spheres;
            int numOfSpheres;

            int MaxBounceCount;
            int NumRaysPerPixel;
            int NumRenderedFrames;
            
            float DivergeStrength;
            float DefocusStrength;
            float RenderDistance;

            float BlackRayTolerance;

            StructuredBuffer<Triangle> Triangles;
            StructuredBuffer<MeshInfo> AllMeshInfo;
            int NumMeshes;
            
            StructuredBuffer<float3> AllLightSources;
            int NumLights;
            
            int UseEnvironment;

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

            HitInfo RayTriangle(const Ray ray, const Triangle tri)
            {
                float3 edgeAB = tri.posB - tri.posA;
				float3 edgeAC = tri.posC - tri.posA;
				float3 normalVector = cross(edgeAB, edgeAC);
				float3 ao = ray.origin - tri.posA;
				float3 dao = cross(ao, ray.dir);

				float determinant = -dot(ray.dir, normalVector);
				float invDet = 1 / determinant;
				
				// Calculate dst to triangle & barycentric coordinates of intersection point
				float dst = dot(ao, normalVector) * invDet;
				float u = dot(edgeAC, dao) * invDet;
				float v = -dot(edgeAB, dao) * invDet;
				float w = 1 - u - v;
				
				// Initialize hit info
				HitInfo hitInfo;
				hitInfo.didHit = determinant >= 1E-6 && dst >= 0 && u >= 0 && v >= 0 && w >= 0;
				hitInfo.hitPoint = ray.origin + ray.dir * dst;
				hitInfo.normal = normalize(tri.normalA * w + tri.normalB * u + tri.normalC * v);
				hitInfo.dst = dst;
				return hitInfo;
            }

            HitInfo CalculateRayCollision(const Ray ray)
            {
                HitInfo closestHit = (HitInfo)0;
                closestHit.dst = FLT_MAX;

                for (int i = 0; i < numOfSpheres; i++)
                {
                    Sphere sphere = Spheres[i];

                    HitInfo hitInfo = RaySphere(ray, sphere.position, sphere.radius);

                    if (hitInfo.didHit && hitInfo.dst < closestHit.dst)
                    {
                        closestHit = hitInfo;
                        closestHit.material = sphere.material;
                    }
                }

                // Raycast against all meshes and keep info about the closest hit
				for (int meshIndex = 0; meshIndex < NumMeshes; meshIndex ++)
				{
					MeshInfo meshInfo = AllMeshInfo[meshIndex];
					/*if (!RayBoundingBox(ray, meshInfo.boundsMin, meshInfo.boundsMax)) {
						continue;
					}*/

					for (uint i = 0; i < meshInfo.numTriangles; i ++) {
						int triIndex = meshInfo.firstTriangleIndex + i;
						Triangle tri = Triangles[triIndex];
						HitInfo hitInfo = RayTriangle(ray, tri);
	
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

            float3 Trace(Ray ray, inout uint rngState)
            {
                float3 incomingLight = 0;
                float3 rayColor = 1;

                for (int i = 0; i <= MaxBounceCount; i++)
                {
                    const HitInfo hitInfo = CalculateRayCollision(ray);
                    const RayTracingMaterial material = hitInfo.material;
                    
                    if (hitInfo.didHit && hitInfo.dst <= RenderDistance)
                    {
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

                                HitInfo lightHitInfo;
                                lightHitInfo.dst = 0;
                                lightHitInfo.hitPoint = float3(0, 0, 0);

                                const HitInfo tempHitInfo = CalculateRayCollision(tempRay);
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
                        if (distance(rayColor, float3(0, 0, 0)) <= BlackRayTolerance) break;
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
                    ray.origin = _WorldSpaceCameraPos + camRight * defocusJitter.x + camUp * defocusJitter.y;
                    float2 jitter = RandomPointInCircle(rngState) * DivergeStrength / numPixels.x;
                    float3 jitteredViewPoint = viewPoint + camRight * jitter.x + camUp * jitter.y;
                    ray.dir = normalize(jitteredViewPoint - ray.origin);
                    
                    totalIncomingLight += Trace(ray, rngState);
                }

                float3 pixelColor = totalIncomingLight / NumRaysPerPixel;
                return float4(pixelColor, 1);
            }
            ENDCG
        }
    }
}