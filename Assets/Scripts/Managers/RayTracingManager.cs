using System.Linq;
using Shapes;
using UnityEngine;
using UnityEngine.Experimental.Rendering;

// ReSharper disable NotAccessedField.Local

namespace Managers {
    [ExecuteAlways]
    [ImageEffectAllowedInSceneView]
    public class RayTracingManager : MonoBehaviour {
        [Header("References")]
        [SerializeField] private Shader rayTracingShader;
        [SerializeField] private Shader companionShader;
        [SerializeField] private Shader smoothingShader;
        [SerializeField] private Camera mainCam;
        
        [Header("Config")]
        [SerializeField] private bool useShaderInSceneView;
        [SerializeField] [Range(0, 32)] private int MaxBounceCount;
        [SerializeField] [Range(0, 64)] private int NumRaysPerPixel;
        [SerializeField] [Min(0)] private float DivergeStrength;
        [SerializeField] [Min(0)] private float DefocusStrength;
        [SerializeField] [Min(0.1f)] private float FocusDistance;
        [SerializeField] [Min(0.1f)] private float RenderDistance;
        [SerializeField] [Range(0f, 1f)] private float BlackRayTolerance;
        [SerializeField] [Range(0f, 1f)] private float smoothingFactor;
        
        [Header("Environment")]
        [SerializeField] private bool environment;
        [SerializeField] private bool visualizeFocus;
        [SerializeField] private Color SkyColorHorizon;
        [SerializeField] private Color SkyColorZenith;
        [SerializeField] private Color GroundColor;
        [SerializeField] private float SunFocus;
        [SerializeField] private float SunIntensity;

        private Material rayTracingMat;
        private Material companionMat;
        private Material smoothingMat;

        private bool init;
        private RayTracingMesh[] meshes;
        private ComputeBuffer meshReader;

        private int NumRenderedFrames;
        
        private RenderTexture currentTexture;

        private RayTracingMesh[] lights;
        private SphereObject[] spheres;
        
        private ComputeBuffer lightSourcesReader;
        private ComputeBuffer triangleReader;
        private ComputeBuffer sphereReader;
        
        //Shader Properties
        private static readonly int Spheres = Shader.PropertyToID("Spheres");
        private static readonly int Triangles = Shader.PropertyToID("Triangles");
        private static readonly int AllMeshInfo = Shader.PropertyToID("AllMeshInfo");
        private static readonly int NumOfSpheres = Shader.PropertyToID("numOfSpheres");
        private static readonly int BounceCount = Shader.PropertyToID("MaxBounceCount");
        private static readonly int RaysPerPixel = Shader.PropertyToID("NumRaysPerPixel");
        private static readonly int RenderedFrames = Shader.PropertyToID("NumRenderedFrames");
        private static readonly int Intensity = Shader.PropertyToID("SunIntensity");
        private static readonly int Focus = Shader.PropertyToID("SunFocus");
        private static readonly int ColorHorizon = Shader.PropertyToID("SkyColorHorizon");
        private static readonly int ColorZenith = Shader.PropertyToID("SkyColorZenith");
        private static readonly int GroundColor1 = Shader.PropertyToID("GroundColor");
        private static readonly int ViewParams = Shader.PropertyToID("ViewParams");
        private static readonly int CamLocalToWorldMatrix = Shader.PropertyToID("CamLocalToWorldMatrix");
        private static readonly int Frames = Shader.PropertyToID("_NumRenderedFrames");
        private static readonly int PrevFrame = Shader.PropertyToID("_PrevFrame");
        private static readonly int NumMeshes = Shader.PropertyToID("NumMeshes");
        private static readonly int UseEnvironment = Shader.PropertyToID("UseEnvironment");
        private static readonly int Strength = Shader.PropertyToID("DivergeStrength");
        private static readonly int DefocusStrength1 = Shader.PropertyToID("DefocusStrength");
        private static readonly int Distance = Shader.PropertyToID("RenderDistance");
        private static readonly int RayTolerance = Shader.PropertyToID("BlackRayTolerance");
        private static readonly int NumLights = Shader.PropertyToID("NumLights");
        private static readonly int AllLightSources = Shader.PropertyToID("AllLightSources");
        private static readonly int MainTex = Shader.PropertyToID("_MainTex");
        private static readonly int SmoothFactor = Shader.PropertyToID("_SmoothFactor");

        private void Start() => InitShaders();

        private void OnDestroy() => ReleaseAndDispose();

        private void OnRenderImage(RenderTexture src, RenderTexture target) {
            if (!init) Init(src);

            if (visualizeFocus) {
                Camera cam = useShaderInSceneView ? Camera.current : mainCam;

                float frustumHeight = 2.0f * Mathf.Tan(cam.fieldOfView * 0.5f * Mathf.Deg2Rad) * FocusDistance;
                float frustumWidth = frustumHeight * cam.aspect;

                Vector3 topLeftFrustumLine = cam.transform.position + cam.transform.right * (-frustumWidth * 0.5f) +
                    cam.transform.up * (frustumHeight * 0.5f) + cam.transform.forward * FocusDistance;

                Vector3 topRightFrustumLine = cam.transform.position + cam.transform.right * (frustumWidth * 0.5f) +
                    cam.transform.up * (frustumHeight * 0.5f) + cam.transform.forward * FocusDistance;

                Vector3 bottomRightFrustumLine = cam.transform.position + cam.transform.right * (frustumWidth * 0.5f) -
                    cam.transform.up * (frustumHeight * 0.5f) + cam.transform.forward * FocusDistance;

                Vector3 bottomLeftFrustumLine = cam.transform.position + cam.transform.right * (-frustumWidth * 0.5f) -
                    cam.transform.up * (frustumHeight * 0.5f) + cam.transform.forward * FocusDistance;

                if (Camera.current.name == "SceneCamera") {
                    using (Draw.Command(Camera.current)) {
                        Color color = Color.green;
                        color.a = 0.25f;
                        Draw.Quad(topRightFrustumLine, topLeftFrustumLine, bottomLeftFrustumLine, bottomRightFrustumLine, color);
                    }
                }
            }

            if (useShaderInSceneView && !Application.isPlaying) {
                InitShaders();

                UpdateCameraParams(Camera.current);
                UpdateMaterialParams();

                Graphics.Blit(null, target, rayTracingMat);
                
                ReleaseAndDispose();
            } else if (Camera.current.name != "SceneCamera") {
                InitShaders();

                UpdateCameraParams(Camera.current);
                UpdateMaterialParams();

                RenderTexture prevFrameCopy = RenderTexture.GetTemporary(src.width, src.height, 0, GraphicsFormat.R32G32B32A32_SFloat);
                Graphics.Blit(currentTexture, prevFrameCopy);

                NumRenderedFrames += Application.isPlaying ? 1 : 0;
                UpdateMaterialParams();
                RenderTexture currentFrame = RenderTexture.GetTemporary(src.width, src.height, 0, GraphicsFormat.R32G32B32A32_SFloat);
                RenderTexture smoothedFrame = RenderTexture.GetTemporary(src.width, src.height, 0, GraphicsFormat.R32G32B32A32_SFloat);
                Graphics.Blit(null, currentFrame, rayTracingMat);

                companionMat.SetInt(Frames, NumRenderedFrames);
                companionMat.SetTexture(PrevFrame, prevFrameCopy);
                Graphics.Blit(currentFrame, smoothedFrame, companionMat);
                
                smoothingMat.SetFloat(SmoothFactor, smoothingFactor);
                smoothingMat.SetTexture(MainTex, smoothedFrame);
                Graphics.Blit(smoothedFrame, currentTexture, smoothingMat);

                Graphics.Blit(currentTexture, target);

                RenderTexture.ReleaseTemporary(currentFrame);
                RenderTexture.ReleaseTemporary(prevFrameCopy);
                RenderTexture.ReleaseTemporary(currentFrame);
                
                ReleaseAndDispose();
            } else Graphics.Blit(src, target);
        }

        private void InitShaders() {
            rayTracingMat = new Material(rayTracingShader);
            companionMat = new Material(companionShader);
            smoothingMat = new Material(smoothingShader);

            ReleaseAndDispose();

            meshes = FindObjectsOfType<RayTracingMesh>();
            foreach (RayTracingMesh mesh in meshes) mesh.UpdateMeshData();
            int size = meshes.Sum(mesh => mesh.triangles.Count);

            if (size > 0) {
                const int triangleSize = sizeof(float) * 18;
                const int meshSize = sizeof(float) * 15 + sizeof(int) * 2;
                triangleReader = new ComputeBuffer(size, triangleSize);
                meshReader = new ComputeBuffer(meshes.Length, meshSize);
            }

            spheres = FindObjectsOfType<SphereObject>();

            if (spheres.Length > 0) {
                const int sphereSize = sizeof(float) * 19;
                sphereReader = new ComputeBuffer(spheres.Length, sphereSize);
            }

            lights = FindObjectsOfType<RayTracingMesh>();
            lights = lights.Where(obj => obj.material.emissionStrength > 0).ToArray();

            if (lights.Length > 0) {
                const int lightSize = sizeof(float) * 3;
                lightSourcesReader = new ComputeBuffer(lights.Length, lightSize);
            }
        }

        private void Init(RenderTexture src) {
            int width = src.width;
            int height = src.height;
            int depthMode = src.depth;

            GraphicsFormat format = src.graphicsFormat;

            bool useMipMaps = src.useMipMap;

            currentTexture = new RenderTexture(width, height, depthMode) {
                graphicsFormat = format, enableRandomWrite = true, autoGenerateMips = false, useMipMap = useMipMaps
            };

            currentTexture.Create();

            init = true;
        }

        private void UpdateCameraParams(Camera cam) {
            rayTracingMat = new Material(rayTracingShader);
            companionMat = new Material(companionShader);
            smoothingMat = new Material(smoothingShader);

            float planeHeight = FocusDistance * Mathf.Tan(cam.fieldOfView * 0.5f * Mathf.Deg2Rad) * 2;
            float planeWidth = planeHeight * cam.aspect;

            rayTracingMat.SetVector(ViewParams, new Vector3(planeWidth, planeHeight, FocusDistance));
            rayTracingMat.SetMatrix(CamLocalToWorldMatrix, cam.transform.localToWorldMatrix);
        }

        private void UpdateMaterialParams() {
            HandleSpheres();
            HandleMeshes();
            HandleLights();

            rayTracingMat.SetInt(BounceCount, MaxBounceCount);
            rayTracingMat.SetInt(RaysPerPixel, NumRaysPerPixel);
            rayTracingMat.SetInt(RenderedFrames, NumRenderedFrames);

            rayTracingMat.SetFloat(Intensity, SunIntensity);
            rayTracingMat.SetFloat(Focus, SunFocus);

            rayTracingMat.SetFloat(Strength, DivergeStrength);
            rayTracingMat.SetFloat(DefocusStrength1, DefocusStrength);
            rayTracingMat.SetFloat(Distance, RenderDistance);
            
            rayTracingMat.SetFloat(RayTolerance, BlackRayTolerance);

            rayTracingMat.SetColor(ColorHorizon, SkyColorHorizon);
            rayTracingMat.SetColor(ColorZenith, SkyColorZenith);
            rayTracingMat.SetColor(GroundColor1, GroundColor);
            rayTracingMat.SetInt(UseEnvironment, environment ? 1 : 0);
        }

        private void HandleSpheres() {
            Sphere[] sphereArray = new Sphere[spheres.Length];

            if (spheres.Length == 0) return;

            for (int i = 0; i < spheres.Length; i++) {
                sphereArray[i] = new Sphere {
                    position = spheres[i].gameObject.transform.position, radius = spheres[i].gameObject.transform.localScale.x / 2,
                    material = spheres[i].material
                };
            }

            sphereReader.SetData(sphereArray);
            rayTracingMat.SetInt(NumOfSpheres, sphereArray.Length);
            rayTracingMat.SetBuffer(Spheres, sphereReader);
        }
        
        private void HandleLights() {
            Vector3[] lightArray = new Vector3[lights.Length];

            if (lights.Length == 0) return;

            for (int i = 0; i < lights.Length; i++) {
                lightArray[i] = new Vector3(lights[i].gameObject.transform.position.x, lights[i].gameObject.transform.position.y, 
                    lights[i].gameObject.transform.position.z);
            }

            lightSourcesReader.SetData(lightArray);
            rayTracingMat.SetInt(NumLights, lights.Length);
            rayTracingMat.SetBuffer(AllLightSources, lightSourcesReader);
        }

        private void HandleMeshes() {
            foreach (RayTracingMesh mesh in meshes) mesh.UpdateMeshData();

            int size = meshes.Sum(mesh => mesh.triangles.Count);

            if (size == 0) return;

            Triangle[] triangleArray = new Triangle[size];
            MeshInfo[] meshInfos = new MeshInfo[meshes.Length];

            int triangleIndex = 0;
            for (int i = 0; i < meshes.Length; i++) {
                meshInfos[i].numTriangles = meshes[i].triangles.Count;
                meshInfos[i].material = meshes[i].material;
                meshInfos[i].firstTriangleIndex = triangleIndex;

                for (int j = 0; j < meshes[i].triangles.Count; j++) {
                    triangleArray[triangleIndex] = new Triangle {
                        posA = meshes[i].triangles[j].posA, posB = meshes[i].triangles[j].posB, posC = meshes[i].triangles[j].posC,
                        normalA = meshes[i].triangles[j].normalA, normalB = meshes[i].triangles[j].normalB,
                        normalC = meshes[i].triangles[j].normalC
                    };

                    triangleIndex++;
                }
            }

            triangleReader.SetData(triangleArray);
            meshReader.SetData(meshInfos);

            rayTracingMat.SetInt(NumMeshes, meshInfos.Length);
            rayTracingMat.SetBuffer(Triangles, triangleReader);
            rayTracingMat.SetBuffer(AllMeshInfo, meshReader);
        }

        private void ReleaseAndDispose() {
            meshReader?.Release();
            sphereReader?.Release();
            triangleReader?.Release();
            lightSourcesReader?.Release();
            meshReader?.Dispose();
            sphereReader?.Dispose();
            triangleReader?.Dispose();
            lightSourcesReader?.Dispose();
        }

        private struct Sphere {
            public Vector3 position;
            public float radius;
            public RayTracingMaterial material;
        }

        private struct Triangle {
            public Vector3 posA, posB, posC;
            public Vector3 normalA, normalB, normalC;
        }

        private struct MeshInfo {
            public int firstTriangleIndex;
            public int numTriangles;
            public RayTracingMaterial material;
        }
    }
}
