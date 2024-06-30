using System;
using System.Collections.Generic;
using System.Linq;
using Shapes;
using Unity.VisualScripting;
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
        [SerializeField] private bool accumulate;
        [SerializeField] private bool smoothing;
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
        [SerializeField] private Color SkyColorHorizon;
        [SerializeField] private Color SkyColorZenith;
        [SerializeField] private Color GroundColor;
        [SerializeField] private float SunFocus;
        [SerializeField] private float SunIntensity;
        
        
        [Header("Debug")]
        [SerializeField] private bool visualizeFocus;
        [SerializeField] private bool visualizeBoundingBox;
        [SerializeField] private bool triangleTest;
        [SerializeField] [Min(0)] private int visDepth;

        private float avgFPS;
        
        
        private Material companionMat;
        private RenderTexture currentTexture;
        private bool init;
        
        private RayTracingMesh[] lights;
        private ComputeBuffer lightSourcesReader;
        private RayTracingMesh[] meshes;
        private ComputeBuffer meshReader;

        private int NumRenderedFrames;

        private Material rayTracingMat;
        private Material smoothingMat;
        private ComputeBuffer sphereReader;
        private SphereObject[] spheres;
        private ComputeBuffer triangleReader;
        
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
        private static readonly int TriangleTest = Shader.PropertyToID("TriangleTest");

        private void Start() => InitShaders();

        private void Update() => avgFPS += (Time.unscaledDeltaTime - avgFPS) * 0.03f;

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
                        Draw.Quad(topRightFrustumLine, topLeftFrustumLine, bottomLeftFrustumLine, bottomRightFrustumLine, 
                            color);
                    }
                }
            }

            if (visualizeBoundingBox) {
                foreach (RayTracingMesh mesh in meshes)
                    if (mesh.gameObject.activeInHierarchy) DrawNodes(mesh.bvh.root, mesh.bvh.AllNodes);
            }

            if (useShaderInSceneView && !Application.isPlaying) {
                InitShaders();

                UpdateCameraParams(Camera.current);
                UpdateMaterialParams();

                Graphics.Blit(null, target, rayTracingMat);

                ReleaseAndDispose();
            } 
            
            else if (Camera.current.name != "SceneCamera") {
                InitShaders();

                UpdateCameraParams(Camera.current);
                UpdateMaterialParams();

                RenderTexture prevFrameCopy = RenderTexture.GetTemporary(src.width, src.height, 0, 
                    GraphicsFormat.R32G32B32A32_SFloat);
                Graphics.Blit(currentTexture, prevFrameCopy);

                NumRenderedFrames += Application.isPlaying ? 1 : 0;
                UpdateMaterialParams();
                RenderTexture currentFrame = RenderTexture.GetTemporary(src.width, src.height, 0, 
                    GraphicsFormat.R32G32B32A32_SFloat);
                RenderTexture smoothedFrame = RenderTexture.GetTemporary(src.width, src.height, 0, 
                    GraphicsFormat.R32G32B32A32_SFloat);
                Graphics.Blit(null, currentFrame, rayTracingMat);

                companionMat.SetInt(Frames, NumRenderedFrames);
                companionMat.SetTexture(PrevFrame, prevFrameCopy);
                if (accumulate) Graphics.Blit(currentFrame, smoothedFrame, companionMat);
                else Graphics.Blit(currentFrame, smoothedFrame);

                smoothingMat.SetFloat(SmoothFactor, smoothingFactor);
                smoothingMat.SetTexture(MainTex, smoothedFrame);
                if (smoothing) Graphics.Blit(smoothedFrame, currentTexture, smoothingMat);
                else Graphics.Blit(smoothedFrame, currentTexture);

                Graphics.Blit(currentTexture, target);

                RenderTexture.ReleaseTemporary(currentFrame);
                RenderTexture.ReleaseTemporary(prevFrameCopy);
                RenderTexture.ReleaseTemporary(currentFrame);

                ReleaseAndDispose();
            } 
            
            else Graphics.Blit(src, target);
        }

        private void DrawNodes(Node node, List<Node> allNodes, int depth = 0) {
            if (depth > visDepth || (node.ChildIndex == 0 && depth > 0)) return;

            Color col = Color.HSVToRGB(depth / 6f % 1, 1, 1);
            if (depth < visDepth) col.a = 0.25f;
            bool fill = depth == visDepth;
            DrawBoundingBox(node.Bounds, col, fill);
            
            DrawNodes(allNodes[node.ChildIndex], allNodes, depth + 1);
            DrawNodes(allNodes[node.ChildIndex + 1], allNodes, depth + 1);
        }
        
        private void DrawBoundingBox(BoundingBox bound, Color col, bool fill) {
            Vector3[] corners = new Vector3[8];

            // Bottom face
            corners[0] = new Vector3(bound.Min.x, bound.Min.y, bound.Min.z);
            corners[1] = new Vector3(bound.Max.x, bound.Min.y, bound.Min.z);
            corners[2] = new Vector3(bound.Max.x, bound.Min.y, bound.Max.z);
            corners[3] = new Vector3(bound.Min.x, bound.Min.y, bound.Max.z);

            // Top face
            corners[4] = new Vector3(bound.Min.x, bound.Max.y, bound.Min.z);
            corners[5] = new Vector3(bound.Max.x, bound.Max.y, bound.Min.z);
            corners[6] = new Vector3(bound.Max.x, bound.Max.y, bound.Max.z);
            corners[7] = new Vector3(bound.Min.x, bound.Max.y, bound.Max.z);
        
            if (Camera.current.name == "SceneCamera") {
                using (Draw.Command(Camera.current)) {
                    Draw.Thickness = 0.025f;
                    
                    Draw.UseDashes = !fill;
                    
                    Draw.Line(corners[0], corners[1], col);
                    Draw.Line(corners[1], corners[2], col);
                    Draw.Line(corners[2], corners[3], col);
                    Draw.Line(corners[3], corners[0], col);

                    // Draw Top face
                    Draw.Line(corners[4], corners[5], col);
                    Draw.Line(corners[5], corners[6], col);
                    Draw.Line(corners[6], corners[7], col);
                    Draw.Line(corners[7], corners[4], col);

                    // Draw vertical lines
                    Draw.Line(corners[0], corners[4], col);
                    Draw.Line(corners[1], corners[5], col);
                    Draw.Line(corners[2], corners[6], col);
                    Draw.Line(corners[3], corners[7], col);
                    
                    if (fill) {
                        col.a = .25f;
                        
                        // Draw Bottom Face
                        Draw.Quad(corners[0], corners[1], corners[2], corners[3], col);

                        // Draw Top Face
                        Draw.Quad(corners[4], corners[5], corners[6], corners[7], col);

                        // Draw Front Face
                        Draw.Quad(corners[3], corners[2], corners[6], corners[7], col);

                        // Draw Back Face
                        Draw.Quad(corners[0], corners[1], corners[5], corners[4], col);

                        // Draw Left Face
                        Draw.Quad(corners[0], corners[3], corners[7], corners[4], col);

                        // Draw Right Face
                        Draw.Quad(corners[1], corners[2], corners[6], corners[5], col);

                    }
                }
            }
        }

        private void OnGUI() {
            // Render UI elements
            GUI.Label(new Rect(10, 10, 200, 20), "Avg FPS: " + Mathf.Round(1f / avgFPS * 10f) / 10f);
            GUI.Label(new Rect(10, 30, 200, 20), "Avg Time: " + 
                Mathf.Round(Time.unscaledDeltaTime * 10000f) / 10f + "ms");
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
                const int meshSize = sizeof(float) * 21 + sizeof(int) * 2;
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
            rayTracingMat.SetInt(TriangleTest, triangleTest ? 1 : 0);
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
                //meshInfos[i].boundsMin = meshes[i].boundsMin;

                foreach (Triangle tri in meshes[i].triangles) {
                    triangleArray[triangleIndex] = new Triangle (
                        tri.posA, tri.posB, tri.posC, tri.normalA, tri.normalB, tri.normalC);

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

        private struct MeshInfo {
            public int firstTriangleIndex;
            public int numTriangles;
            public RayTracingMaterial material;
            public Vector3 boundsMin;
            public Vector3 boundsMax;
        }
    }
}