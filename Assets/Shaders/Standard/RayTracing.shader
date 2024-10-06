Shader "Custom/RayTracing" {
    SubShader {
        Cull Off ZWrite Off ZTest Always

        Pass {
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
                float3 invDir;
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
                uint triOffset;
                uint nodeOffset;
                float4x4 WorldToLocalMatrix;
                float4x4 LocalToWorldMatrix;
                RayTracingMaterial material;
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

            StructuredBuffer<float3> LightPositions;
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

            float2 RandomPointInCircle(uint rngState)
            {
                const float angle = RandomValue(rngState) * 2 * PI;
                const float2 pointOnCircle = float2(cos(angle), sin(angle));
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
                TriangleHitInfo hitInfo;
                hitInfo.didHit = determinant >= 1E-8 && dst >= 0 && u >= 0 && v >= 0 && w >= 0;
                hitInfo.hitPoint = ray.origin + ray.dir * dst;
                hitInfo.normal = normalize(tri.normalA * w + tri.normalB * u + tri.normalC * v);
                hitInfo.dst = dst;
                return hitInfo;
            }

            bool RayBoundingBox(Ray ray, float3 boxMin, float3 boxMax)
            {
                float3 tMin = (boxMin - ray.origin) * ray.invDir;
                float3 tMax = (boxMax - ray.origin) * ray.invDir;
                float3 t1 = min(tMin, tMax);
                float3 t2 = max(tMin, tMax);
                float tNear = max(max(t1.x, t1.y), t1.z);
                float tFar = min(min(t2.x, t2.y), t2.z);

                bool hit = tFar >= tNear && tFar > 0;
                return hit;
            };

            float RayBoundingBoxDst(Ray ray, float3 boxMin, float3 boxMax)
            {
                float3 tMin = (boxMin - ray.origin) * ray.invDir;
                float3 tMax = (boxMax - ray.origin) * ray.invDir;
                float3 t1 = min(tMin, tMax);
                float3 t2 = max(tMin, tMax);
                float tNear = max(max(t1.x, t1.y), t1.z);
                float tFar = min(min(t2.x, t2.y), t2.z);

                bool hit = tFar >= tNear && tFar > 0;
                float dst = hit ? tNear > 0 ? tNear : 0 : 1.#INF;
                return dst;
            }

            TriangleHitInfo RayTriangleBVH(const Ray ray, int nodeOffset, int triOffset)
            {
                int stack[32];
                int stackIndex = 0;
                stack[stackIndex++] = 0;

                TriangleHitInfo result;
                result.dst = FLT_MAX;
                result.didHit = false;

                while (stackIndex > 0)
                {
                    const Node node = Nodes[stack[--stackIndex] + nodeOffset];

                    if (node.ChildIndex == 0)
                    {
                        stats[0] += node.TrianglesCount;
                        for (int i = node.TriangleIndex; i < node.TriangleIndex + node.TrianglesCount; i++)
                        {
                            TriangleHitInfo triHitInfo =
                                RayTriangle(ray, TriangleBuffer[i + triOffset]);
                            if (triHitInfo.dst < result.dst && triHitInfo.didHit)
                            {
                                result.didHit = triHitInfo.didHit;
                                result.hitPoint = triHitInfo.hitPoint;
                                result.normal = triHitInfo.normal;
                                result.dst = triHitInfo.dst;
                            }
                        }
                    }
                    else
                    {
                        int childIndexA = node.ChildIndex + 0;
                        int childIndexB = node.ChildIndex + 1;
                        const Node childA = Nodes[childIndexA + nodeOffset];
                        const Node childB = Nodes[childIndexB + nodeOffset];

                        float dstA = RayBoundingBoxDst(ray, childA.BoundsMin, childA.BoundsMax);
                        float dstB = RayBoundingBoxDst(ray, childB.BoundsMin, childB.BoundsMax);
                        stats[1] += 2; // count bounding box intersection tests

                        // We want to look at closest child node first, so push it last
                        const bool isNearestA = dstA <= dstB;
                        const float dstNear = isNearestA ? dstA : dstB;
                        const float dstFar = isNearestA ? dstB : dstA;
                        const int childIndexNear = isNearestA ? childIndexA : childIndexB;
                        const int childIndexFar = isNearestA ? childIndexB : childIndexA;

                        if (dstFar < result.dst) stack[stackIndex++] = childIndexFar;
                        if (dstNear < result.dst) stack[stackIndex++] = childIndexNear;
                    }
                }

                return result;
            }

            TriangleHitInfo CalculateRayCollision(const Ray ray)
            {
                TriangleHitInfo closestHit;
                closestHit.dst = FLT_MAX;

                // Raycast against all meshes and keep info about the closest hit
                for (int meshIndex = 0; meshIndex < NumMeshes; meshIndex++)
                {
                    Ray modifiedRay;
                    const MeshInfo meshInfo = AllMeshInfo[meshIndex];

                    modifiedRay.origin = mul(meshInfo.WorldToLocalMatrix, float4(ray.origin, 1));
                    modifiedRay.dir = mul(meshInfo.WorldToLocalMatrix, float4(ray.dir, 0));
                    modifiedRay.invDir = 1 / modifiedRay.dir;

                    const TriangleHitInfo hitInfo = RayTriangleBVH(modifiedRay, meshInfo.nodeOffset,
                       meshInfo.triOffset);

                    if (hitInfo.dst < closestHit.dst)
                    {
                        closestHit.didHit = true;
                        closestHit.dst = hitInfo.dst;
                        closestHit.normal = normalize(mul(meshInfo.LocalToWorldMatrix,
        float4(hitInfo.normal, 0)));
                        closestHit.hitPoint = ray.origin + ray.dir * hitInfo.dst;
                        closestHit.material = meshInfo.material;
                    }
                }

                return closestHit;
            }

            float3 GetEnvironmentLight(Ray ray)
            {
                const float skyGradientT = pow(smoothstep(0, 0.4, ray.dir.y), 0.35);
                const float groundToSkyT = smoothstep(-0.01, 0, ray.dir.y);
                const float3 skyGradient = lerp(SkyColorHorizon, SkyColorZenith, skyGradientT);
                const float sun = pow(max(0, dot(ray.dir, _WorldSpaceLightPos0.xyz)), SunFocus) * SunIntensity;
                // Combine ground, sky, and sun
                float3 composite = lerp(GroundColor, skyGradient, groundToSkyT) + sun * (groundToSkyT >= 1);
                return composite;
            }

            float3 RayDebugView(Ray ray)
            {
                TriangleHitInfo hitInfo = CalculateRayCollision(ray);

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
                case 3:
                    return hitInfo.didHit;
                default:
                    return float3(1, 0, 1);
                }
            }

            float3 Trace(Ray ray, uint rngState)
            {
                float3 incomingLight = 0;
                float3 rayColor = 1;

                for (int i = 0; i <= MaxBounceCount; i++)
                {
                    TriangleHitInfo hitInfo = CalculateRayCollision(ray);

                    if (hitInfo.didHit)
                    {
                        const RayTracingMaterial material = hitInfo.material;

                        if (hitInfo.dst <= RenderDistance)
                        {
                            ray.origin = hitInfo.hitPoint;
                            float3 diffuseDir = normalize(hitInfo.normal + RandomDirection(rngState));
                            float3 specularDir = reflect(ray.dir, hitInfo.normal);
                            bool isSpecularBounce = material.specularProbability >= RandomValue(rngState);

                            if (i == MaxBounceCount - 1 && NumLights > 0 && isSpecularBounce)
                            {
                                for (int j = 0; j < NumLights; j++)
                                {
                                    Ray tempRay;
                                    tempRay.origin = ray.origin;
                                    tempRay.dir = normalize(LightPositions[j] - ray.origin);
                                    tempRay.invDir = 1 / normalize(LightPositions[j] - ray.origin);

                                    TriangleHitInfo lightHitInfo;
                                    lightHitInfo.dst = 0;
                                    lightHitInfo.hitPoint = float3(0, 0, 0);

                                    const TriangleHitInfo tempHitInfo = CalculateRayCollision(tempRay);
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

                            ray.dir = lerp(diffuseDir, specularDir, material.smoothness * isSpecularBounce);

                            float3 emittedLight = material.emissionColor * material.emissionStrength;
                            incomingLight += emittedLight * rayColor;
                            rayColor *= lerp(material.color, material.specularColor, isSpecularBounce);
                            if (material.emissionStrength > 0) break;
                        }
                    }
                    else
                    {
                        if (UseEnvironment == 1) incomingLight += GetEnvironmentLight(ray) * rayColor;
                        break;
                    }
                }

                return incomingLight;
            }

            float4 frag(const v2f i) : SV_Target
            {
                uint2 numPixels = _ScreenParams.xy;
                uint2 pixelCoord = i.texcoord * numPixels;
                const uint pixelIndex = pixelCoord.y * numPixels.x + pixelCoord.x;
                const uint rngState = pixelIndex + NumRenderedFrames * 719393 - NumRenderedFrames * 6814;

                float3 viewPointLocal = float3(i.texcoord - 0.5, 1) * ViewParams;
                const float3 viewPoint = mul(CamLocalToWorldMatrix, float4(viewPointLocal, 1));
                const float3 camRight = CamLocalToWorldMatrix._m00_m10_m20;
                const float3 camUp = CamLocalToWorldMatrix._m01_m11_m21;

                float3 totalIncomingLight = 0;

                for (int rayIndex = 0; rayIndex < NumRaysPerPixel; rayIndex++)
                {
                    Ray ray;
                    
                    float2 defocusJitter = RandomPointInCircle(rngState) * DefocusStrength / numPixels.x;
                    ray.origin = DebugView == 0
                    ? _WorldSpaceCameraPos + camRight * defocusJitter.x + camUp * defocusJitter.y
                    : _WorldSpaceCameraPos;
                    
                    float2 jitter = RandomPointInCircle(rngState) * DivergeStrength / numPixels.x;
                    const float3 jitteredViewPoint = DebugView == 0
                    ? viewPoint + camRight * jitter.x + camUp * jitter.y
                    : viewPoint;
                    
                    ray.dir = normalize(jitteredViewPoint - ray.origin);
                    ray.invDir = 1 / ray.dir;

                    totalIncomingLight += DebugView == 1 ? RayDebugView(ray) : Trace(ray, rngState);

                    if (DebugView == 1) break;
                }

                float3 pixelColor = DebugView == 0
                ? totalIncomingLight / NumRaysPerPixel
                : totalIncomingLight;

                return float4(pixelColor, 1);
            }
            ENDCG
        }
    }
}