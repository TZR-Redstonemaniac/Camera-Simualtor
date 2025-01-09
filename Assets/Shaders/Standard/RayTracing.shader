Shader "Custom/RayTracing" {
    SubShader {
        Cull Off ZWrite Off ZTest Always

        Pass {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma exclude_renderers d3d11_9x
            #pragma exclude_renderers d3d9
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
            StructuredBuffer<float3> RandLightPositions;
            StructuredBuffer<RayTracingMaterial> RandLightMaterials;
            
            int NumMeshes;
            int NumLights;

            int UseEnvironment;

            int DebugView;
            int DebugViewMode;

            float BoxDisplayThreshold;
            float TriangleDisplayThreshold;

            float Weights[500];

            float3 samples[500];
            float3 sampleWeights[500];
            
            float SpecularPower;

            int2 stats;

            // ------------- Ray Intersection Functions -------------
            float Dirac(float3 ray)
            {
                return ray == 0 ? 99999 : 0;
            }

            float UnpolarizedFrensel(Ray inRay, Ray outRay)
            {
                float thetaI = acos(inRay.dir.z);
                float thetaT = acos(outRay.dir.z);
                
                float rs = (cos(thetaT) - cos(thetaI)) / (cos(thetaT) + cos(thetaI));
                float rp = (cos(thetaI) - cos(thetaT)) / (cos(thetaT) + cos(thetaI));
                
                return (rs + rp) / 2;
            }
            
            float DiffuseBRDF(RayTracingMaterial mat)
            {
                return (1 - mat.specularProbability) / PI;
            }

            float SpecularBRDF(Ray inRay, Ray outRay)
            {
                return UnpolarizedFrensel(inRay, outRay) * (Dirac(inRay.dir - outRay.dir) / outRay.dir.z);
            }
            
            void CalculateLightWeights(Ray inRay, float3 hitNormal, float3 hitPoint)
            {
                for (int i = 0; i < NumLights; i++)
                {
                    Weights[i] = dot(inRay.dir, hitNormal) / (1 / pow(abs(hitPoint - RandLightPositions[i]), 2));
                }
            }
            
            float RandomValue(inout uint state)
            {
                //Perform random calculations to get as random a value as possible
                state = state * 747796405 + 2891336453;
                uint result = (state >> (state >> 28) + 4 ^ state) * 277803737;
                result = result >> 22 ^ result;
                return result / 4294967295.0;
            }

            float RandomValueNormalDistribution(inout uint state)
            {
                //Generate a random value from a normal distribution
                const float theta = 2 * 3.1415296 * RandomValue(state);
                const float rho = sqrt(-2 * log(RandomValue(state)));
                return rho * cos(theta);
            }

            float2 RandomPointInCircle(uint rngState)
            {
                //Generate a ranfom point in a circle
                const float angle = RandomValue(rngState) * 2 * PI;
                const float2 pointOnCircle = float2(cos(angle), sin(angle));
                return pointOnCircle * sqrt(RandomValue(rngState));
            }

            float3 RandomDirection(inout uint state)
            {
                //Get a random position in a cube and normalize it to make a vector dir
                float x = RandomValueNormalDistribution(state);
                float y = RandomValueNormalDistribution(state);
                float z = RandomValueNormalDistribution(state);
                const float3 pointInCube = float3(x, y, z);
                return normalize(pointInCube);
            }

            HitInfo RaySphere(const Ray ray, const float3 sphereCenter, const float sphereRadius)
            {
                //Check if ray intersects with a sphere
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
                //Get the edges and normal vectors
                float3 edgeAB = tri.posB - tri.posA;
                float3 edgeAC = tri.posC - tri.posA;
                float3 normalVector = cross(edgeAB, edgeAC);
                float3 ao = ray.origin - tri.posA;
                float3 dao = cross(ao, ray.dir);

                float determinant = -dot(ray.dir, normalVector);
                float invDet = 1 / determinant;

                //Calculate dst to triangle & barycentric coordinates of intersection point
                float dst = dot(ao, normalVector) * invDet;
                float u = dot(edgeAC, dao) * invDet;
                float v = -dot(edgeAB, dao) * invDet;
                float w = 1 - u - v;

                //Initialize hit info
                TriangleHitInfo hitInfo;
                hitInfo.didHit = determinant >= 1E-8 && dst >= 0 && u >= 0 && v >= 0 && w >= 0;
                hitInfo.hitPoint = ray.origin + ray.dir * dst;
                hitInfo.normal = normalize(tri.normalA * w + tri.normalB * u + tri.normalC * v);
                hitInfo.dst = dst;
                return hitInfo;
            }

            bool RayBoundingBox(Ray ray, float3 boxMin, float3 boxMax)
            {
                //Perform complex calculations to determine wheter a ray intersects a box 
                float3 tMin = (boxMin - ray.origin) * ray.invDir;
                float3 tMax = (boxMax - ray.origin) * ray.invDir;
                float3 t1 = min(tMin, tMax);
                float3 t2 = max(tMin, tMax);
                float tNear = max(max(t1.x, t1.y), t1.z);
                float tFar = min(min(t2.x, t2.y), t2.z);

                bool hit = tFar >= tNear && tFar > 0;
                return hit;
            };

            float RayBoundingBoxDst(Ray ray, float3 boxMin, float3 boxMax) {
                //Perform calculations that determine the distance of a ray from a box if it hits
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

            TriangleHitInfo RayTriangleBVH(const Ray ray, int nodeOffset, int triOffset) {
                //Create an array of an arbitrary size to use as a stack
                int stack[32];

                //Index that holds the top-most value of the stack
                int stackIndex = 0;

                //Push an index of 0
                stack[stackIndex++] = 0;

                //Create a temp result object and set the hit distance to basically infinity
                TriangleHitInfo result;
                result.dst = FLT_MAX;
                result.didHit = false;

                //Loop while the stack is not empty
                while (stackIndex > 0) {
                    //Pop the first node index from the stack and get the node
                    const Node node = Nodes[stack[--stackIndex] + nodeOffset];

                    //Run if the node does not have a child (reached end of tree)
                    if (node.ChildIndex == 0) {
                        //Update stats object for debug purposes
                        stats[0] += node.TrianglesCount;

                        //Run for every triangle in the node
                        for (int i = node.TriangleIndex; i < node.TriangleIndex + node.TrianglesCount; i++) {
                            //Check if the ray intersects with the current triangle
                            TriangleHitInfo triHitInfo = RayTriangle(ray, TriangleBuffer[i + triOffset]);

                            //If the ray intersects with the triangle and is closer than the current closest, update closest
                            if (triHitInfo.dst < result.dst && triHitInfo.didHit) {
                                result.didHit = triHitInfo.didHit;
                                result.hitPoint = triHitInfo.hitPoint;
                                result.normal = triHitInfo.normal;
                                result.dst = triHitInfo.dst;
                            }
                        }
                    }

                    //Run if the node does have a child (has not reached end of tree)
                    else {
                        //Get the node's child indicies
                        int childIndexA = node.ChildIndex + 0;
                        int childIndexB = node.ChildIndex + 1;

                        //Get the node objects
                        const Node childA = Nodes[childIndexA + nodeOffset];
                        const Node childB = Nodes[childIndexB + nodeOffset];

                        //Get the distance of each node from the ray
                        float dstA = RayBoundingBoxDst(ray, childA.BoundsMin, childA.BoundsMax);
                        float dstB = RayBoundingBoxDst(ray, childB.BoundsMin, childB.BoundsMax);

                        //Count bounding box intersection tests for debug purposes
                        stats[1] += 2; 

                        //Push closest child last to look at it first
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

            TriangleHitInfo CalculateRayCollision(const Ray ray) {
                //Set the distance of the closest hit to basically infinity
                TriangleHitInfo closestHit;
                closestHit.dst = FLT_MAX;

                //Loop through all the meshes and keep info about the closest hit
                for (int meshIndex = 0; meshIndex < NumMeshes; meshIndex++) {
                    //Get the current mesh info
                    Ray modifiedRay;
                    const MeshInfo meshInfo = AllMeshInfo[meshIndex];

                    //Apply mesh matricies to fix object translation
                    modifiedRay.origin = mul(meshInfo.WorldToLocalMatrix, float4(ray.origin, 1));
                    modifiedRay.dir = mul(meshInfo.WorldToLocalMatrix, float4(ray.dir, 0));
                    modifiedRay.invDir = 1 / modifiedRay.dir;

                    //Get the hit info of the ray and the triangle it intersects
                    const TriangleHitInfo hitInfo = RayTriangleBVH(modifiedRay, meshInfo.nodeOffset,
                       meshInfo.triOffset);

                    //If the current hit is closer, set the closest hit to it
                    if (hitInfo.dst < closestHit.dst) {
                        closestHit.didHit = true;
                        closestHit.dst = hitInfo.dst;
                        closestHit.normal = normalize(mul(meshInfo.LocalToWorldMatrix, float4(hitInfo.normal, 0)));
                        closestHit.hitPoint = ray.origin + ray.dir * hitInfo.dst;
                        closestHit.material = meshInfo.material;
                    }
                }

                return closestHit;
            }

            float3 GetEnvironmentLight(Ray ray) {
                //Determine the gradient transition by angle of ray
                const float skyGradientT = pow(smoothstep(0, 0.4, ray.dir.y), 0.35);
                const float groundToSkyT = smoothstep(-0.01, 0, ray.dir.y);

                //Change the sky gradient color
                const float3 skyGradient = lerp(SkyColorHorizon, SkyColorZenith, skyGradientT);

                //Put the sun in the direction the global light in the scene faces
                const float sun = pow(max(0, dot(ray.dir, _WorldSpaceLightPos0.xyz)), SunFocus) * SunIntensity;
                
                //Combine ground, sky, and sun
                float3 composite = lerp(GroundColor, skyGradient, groundToSkyT) + sun * (groundToSkyT >= 1);
                return composite;
            }

            float3 RayDebugView(Ray ray)
            {
                //Perform ray collision test
                TriangleHitInfo hitInfo = CalculateRayCollision(ray);

                //Determine the display colors based on threshold
                float boxDisplay = stats[0] / BoxDisplayThreshold;
                float triangleDisplay = stats[0] / TriangleDisplayThreshold;

                switch (DebugViewMode)
                {
                    //Return hit normal color
                    case 0:
                        return (hitInfo.normal * 0.5 + 0.5) * hitInfo.didHit;

                    //Return number of box collisions from black to white, with red if over threshold
                    case 1:
                        return boxDisplay < 1 ? boxDisplay : float3(1, 0, 0);

                    //Return number of triangle collisions from black to white, with red if over threshold
                    case 2:
                        return triangleDisplay < 1 ? triangleDisplay : float3(1, 0, 0);

                    //Highlight objects that are hit
                    case 3:
                        return hitInfo.didHit;

                    //Return purple in default case
                    default:
                        return float3(1, 0, 1);
                }
            }

            void CalculateRayEffect(Ray ray, TriangleHitInfo info, int i, int index, float val, inout uint rngState)
            {
                float3 rayColor = 1;
                                
                RayTracingMaterial mat = RandLightMaterials[index];

                Ray tempRay = ray;
                tempRay.dir = normalize(RandLightPositions[index] - info.hitPoint);
                TriangleHitInfo tempHitInfo = CalculateRayCollision(tempRay);
                
                bool visible = abs(tempHitInfo.hitPoint - RandLightPositions[index]) <= 1;

                float ogRayDir = abs(dot(normalize(ray.dir), info.normal));
                //ray.origin = info.hitPoint;
                //float3 diffuseDir = normalize(info.normal + RandomDirection(rngState));
                //float3 specularDir = reflect(ray.dir, info.normal);
                bool isSpecularBounce = mat.specularProbability >= RandomValue(rngState);

                //ray.dir = normalize(lerp(diffuseDir, specularDir, mat.smoothness * isSpecularBounce));

                float3 emittedLight = mat.emissionColor * mat.emissionStrength;

                Ray outRay = ray;
                outRay.dir = reflect(ray.dir, info.normal);
                
                rayColor *= lerp(mat.color, mat.specularColor, isSpecularBounce);
                //rayColor *= lerp(DiffuseBRDF(mat), SpecularBRDF(ray, outRay), isSpecularBounce);

                rayColor.r *= ogRayDir;
                rayColor.g *= ogRayDir;
                rayColor.b *= ogRayDir;
                
                float p = max(rayColor.r, max(rayColor.g, rayColor.b));
                
                rayColor *= 1 / p;
                
                float distance = abs(info.hitPoint - RandLightPositions[index]) + 0.0001;
                samples[i] = emittedLight * rayColor * visible * (1 / distance);

                float weight = Weights[index] + 0.0001;
                sampleWeights[i] = val / weight;
            }

            float3 Trace(Ray ray, uint rngState) {
                //Initialize the incoming light and current ray color
                float3 incomingLight = 0;
                float3 rayColor = 1;

                //Run for every bounce
                for (int rayIndex = 0; rayIndex < MaxBounceCount; rayIndex++) {
                    //Calculate the info of the triangle the ray intersected
                    TriangleHitInfo hitInfo = CalculateRayCollision(ray);

                    //Run if the ray hit something
                    if (hitInfo.didHit) {
                        /*CalculateLightWeights(ray, hitInfo.normal, hitInfo.hitPoint);

                        int currIndex = -1;
                        float resevoirVal = 0;

                        for (int i = 0; i < NumLights; i++){
                            bool add = RandomValueNormalDistribution(rngState) <= 0.5;
                            if (add) currIndex = i;
                            resevoirVal += Weights[i];
                        }
                        
                        for (int i = 0; i < MaxBounceCount; i++) {
                            for (int j = 0; j < NumLights; j++){
                                bool add = RandomValueNormalDistribution(rngState) <= 0.5;
                                if (add) currIndex = j;
                                resevoirVal += Weights[j];
                            }

                            CalculateRayEffect(ray, hitInfo, i, currIndex, resevoirVal / NumLights, rngState);
                        }

                        for (int j = 0; j < MaxBounceCount; j++)
                        {
                            incomingLight += samples[j] * sampleWeights[j];
                        }*/

                        //Check if the hit point is within the render distance
                        if (hitInfo.dst <= RenderDistance) {
                            //Move the ray origin to the hit point
                            ray.origin = hitInfo.hitPoint;

                            //Get the diffuse direction and the specular direction
                            float3 diffuseDir = normalize(hitInfo.normal + RandomDirection(rngState));
                            float3 specularDir = reflect(ray.dir, hitInfo.normal);

                            //Randomly decide if the bounce is specular based on specular prob
                            bool isSpecularBounce = hitInfo.material.specularProbability >= RandomValue(rngState);

                            //Lerp the ray dir based on the smoothness and if the bounce is speculat or not
                            ray.dir = normalize(lerp(diffuseDir, specularDir, hitInfo.material.smoothness * isSpecularBounce));

                            //Add to the incoming light if the object has an emission
                            float3 emittedLight = hitInfo.material.emissionColor * hitInfo.material.emissionStrength;
                            incomingLight += emittedLight * rayColor;

                            //Multiply the ray color by either the normal color or specular color based on bounce type
                            rayColor *= lerp(hitInfo.material.color, hitInfo.material.specularColor, isSpecularBounce);

                            //Break if the ray color is so dark that it won't contribute much
                            float p = max(rayColor.r, max(rayColor.g, rayColor.b));
						    if (RandomValue(rngState) >= p) {
							    break;
						    }

                            //Multiply by the reciprocal to improve color brightness
                            rayColor *= 1 / p;
                        }
                    }
                    else {
                        //Add the environment light if the ray misses and it's enabled, then break
                        if (UseEnvironment == 1) incomingLight += GetEnvironmentLight(ray) * rayColor;
                        break;
                    }
                }
                
                return incomingLight;
            }

            float4 frag(const v2f i) : SV_Target {
                //Get the data of the current pixel
                uint2 numPixels = _ScreenParams.xy;
                uint2 pixelCoord = i.texcoord * numPixels;
                const uint pixelIndex = pixelCoord.y * numPixels.x + pixelCoord.x;

                //Create as random a state as possible
                const uint rngState = pixelIndex + NumRenderedFrames * 719393 - NumRenderedFrames * 6814;

                //Get the data of the current cam viewpoint
                float3 viewPointLocal = float3(i.texcoord - 0.5, 1) * ViewParams;
                const float3 viewPoint = mul(CamLocalToWorldMatrix, float4(viewPointLocal, 1));
                const float3 camRight = CamLocalToWorldMatrix._m00_m10_m20;
                const float3 camUp = CamLocalToWorldMatrix._m01_m11_m21;

                //Set variable for light of current pixel
                float3 totalIncomingLight = 0;

                //Run algorithm for the amount of times per pixel
                for (int rayIndex = 0; rayIndex < NumRaysPerPixel; rayIndex++) {
                    Ray ray;

                    //Change the origin point based on the defocus strength if not using debug view
                    float2 defocusJitter = RandomPointInCircle(rngState) * DefocusStrength / numPixels.x;
                    ray.origin = DebugView == 0
                    ? _WorldSpaceCameraPos + camRight * defocusJitter.x + camUp * defocusJitter.y
                    : _WorldSpaceCameraPos;

                    //Change the direction based on the diverge strength if not using debug view
                    float2 jitter = RandomPointInCircle(rngState) * DivergeStrength / numPixels.x;
                    const float3 jitteredViewPoint = DebugView == 0
                    ? viewPoint + camRight * jitter.x + camUp * jitter.y
                    : viewPoint;

                    //Change the ray direction and inverse direction
                    ray.dir = normalize(jitteredViewPoint - ray.origin);
                    ray.invDir = 1 / ray.dir;

                    //Either trace the ray or show the debug view
                    totalIncomingLight += DebugView == 1 ? RayDebugView(ray) : Trace(ray, rngState);

                    //Run only once if debug view is enabled
                    if (DebugView == 1) break;
                }

                //Divide the incoming light by the number of rays to not result in extra brightness
                float3 pixelColor = DebugView == 0
                ? totalIncomingLight / NumRaysPerPixel
                : totalIncomingLight;

                //Draw color to pixel
                return float4(pixelColor, 1);
            }
            ENDCG
        }
    }
}