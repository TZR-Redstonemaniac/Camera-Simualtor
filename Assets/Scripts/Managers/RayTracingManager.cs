using System;
using System.Collections.Generic;
using System.Linq;
using Objects;
using UnityEditor;
using UnityEngine;
using UnityEngine.Experimental.Rendering;
using Random = UnityEngine.Random;

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
        [SerializeField] private bool useShaderInGameView;
        [SerializeField] private bool accumulate;
        [SerializeField] private bool smoothing;
        [SerializeField] [Range(0, 32)] private int MaxBounceCount;
        [SerializeField] [Range(0, 64)] private int NumRaysPerPixel;
        [SerializeField] [Min(0)] private float DivergeStrength;
        [SerializeField] [Min(0)] private float DefocusStrength;
        [SerializeField] [Min(0.1f)] internal float FocusDistance;
        [SerializeField] [Min(0.1f)] private float RenderDistance;
        [SerializeField] [Range(0f, 1f)] private float BlackRayTolerance;
        [SerializeField] [Range(0f, 1f)] private float smoothingFactor;
        [SerializeField] [Min(0)] private float specularPower;

        
        [Header("Environment")]
        [SerializeField] private bool environment;
        [SerializeField] private Color SkyColorHorizon;
        [SerializeField] private Color SkyColorZenith;
        [SerializeField] private Color GroundColor;
        [SerializeField] private float SunFocus;
        [SerializeField] private float SunIntensity;
        
        
        
        [Header("Debug")]
        [SerializeField] private bool debugView;
        [HideInInspector] public int debugViewMode;
        [SerializeField] [Min(0)] private int boxDisplayThreshold;
        [SerializeField] [Min(0)] private int triangleDisplayThreshold;

        
        private float avgFPS;
        
        private int NumRenderedFrames;
        
        private bool init;
        
        private RenderTexture currentTexture;

        internal RayTracingMesh[] meshes;
        
        private List<MeshInfo> meshesInfos = new();
        private List<Node> AllNodes = new();
        private List<MeshTriangle> AllTriangles = new();
        private List<Vector3> RandLightPos = new();
        private List<RayTracingMaterial> RandLightMat = new();

        private Dictionary<RayTracingMesh, (int nodeOffset, int triOffset)> MeshOffsetInfo = new();

        private ComputeBuffer triangleBuffer;
        private ComputeBuffer nodeBuffer;
        private ComputeBuffer meshInfoBuffer;
        private ComputeBuffer randLightPosBuffer;
        private ComputeBuffer randLightMatBuffer;

        private Material rayTracingMat;
        private Material companionMat;
        private Material smoothingMat;
        
        private int activeMeshNum;
        private int numLights;

        private bool handlingMeshes;
        
        //Shader Properties
        #region Properties
        
        private static readonly int Triangles = Shader.PropertyToID("TriangleBuffer");
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
        private static readonly int MainTex = Shader.PropertyToID("_MainTex");
        private static readonly int SmoothFactor = Shader.PropertyToID("_SmoothFactor");
        private static readonly int Nodes = Shader.PropertyToID("Nodes");
        private static readonly int DebugView = Shader.PropertyToID("DebugView");
        private static readonly int DebugViewMode = Shader.PropertyToID("DebugViewMode");
        private static readonly int BoxDisplayThreshold = Shader.PropertyToID("BoxDisplayThreshold");
        private static readonly int TriangleDisplayThreshold = Shader.PropertyToID("TriangleDisplayThreshold");
        private static readonly int AllMeshInfo = Shader.PropertyToID("AllMeshInfo");
        private static readonly int SpecularPower = Shader.PropertyToID("SpecularPower");
        private static readonly int RandLightPositions = Shader.PropertyToID("RandLightPositions");
        private static readonly int RandLightMaterials = Shader.PropertyToID("RandLightMaterials");
        private static readonly int NumLights = Shader.PropertyToID("NumLights");

        #endregion

        // Subscribe to the hierarchyChanged event in the Unity editor
        private void OnEnable() => EditorApplication.hierarchyChanged += OnHierarchyChanged;

        // Unsubscribe from the hierarchyChanged event when this script is disabled
        private void OnDisable() => EditorApplication.hierarchyChanged -= OnHierarchyChanged;

        private void Start() {
            //Initialize all shaders
            InitShaders();
            
            //Handle the meshes in the scene
            HandleMeshes();

            if (Camera.main != null) Camera.main.depthTextureMode = DepthTextureMode.Depth;
        }

        //Update the avg FPS
        private void Update() {
            avgFPS += (Time.unscaledDeltaTime - avgFPS) * 0.03f; 
            
            
            
        }

        //When an object is destroyed, release and dispose all buffers
        private void OnDestroy() => ReleaseAndDispose();

        private void OnRenderImage(RenderTexture src, RenderTexture target) {
            //Initialize the source texture if it isn't already
            if (!init) Init(src);

            //Display the shader in the scene view if selected and the app is not running
            if (useShaderInSceneView && !Application.isPlaying && Camera.current.name == "SceneCamera") {
                //Update the camera and material parameters
                UpdateCameraParams(Camera.current);
                UpdateMaterialParams();

                //Apply the shader to the screen
                Graphics.Blit(null, target, rayTracingMat);

                //Release and dispose of all buffers
                ReleaseAndDispose();
            } 
            
            //Run the shader in any view that is not the scene view
            else if (Camera.current.name != "SceneCamera" && useShaderInGameView) {
                //Update the camera and material parameters
                UpdateCameraParams(Camera.current);
                UpdateMaterialParams();
                
                //Initialize the temp render textures
                RenderTexture prevFrameCopy = RenderTexture.GetTemporary(src.width, src.height, 0, 
                    GraphicsFormat.R32G32B32A32_SFloat);
                RenderTexture currentFrame = RenderTexture.GetTemporary(src.width, src.height, 0, 
                    GraphicsFormat.R32G32B32A32_SFloat);
                RenderTexture smoothedFrame = RenderTexture.GetTemporary(src.width, src.height, 0, 
                    GraphicsFormat.R32G32B32A32_SFloat);

                //Blit the current frame to prevFrameCopy
                Graphics.Blit(currentTexture, prevFrameCopy);
                
                //Apply the ray tracer to the scene
                Graphics.Blit(null, currentFrame, rayTracingMat);
                
                //Accumulate the previous frame and the current one if enabled
                if (accumulate) {
                    companionMat.SetTexture(PrevFrame, prevFrameCopy);
                    companionMat.SetInt(Frames, NumRenderedFrames);
                    Graphics.Blit(currentFrame, smoothedFrame, companionMat);
                }
                else Graphics.Blit(currentFrame, smoothedFrame);

                //Apply smoothing to the current frame if enabled
                if (smoothing) {
                    smoothingMat.SetFloat(SmoothFactor, smoothingFactor);
                    smoothingMat.SetTexture(MainTex, smoothedFrame);
                    Graphics.Blit(smoothedFrame, currentTexture, smoothingMat);
                }
                else Graphics.Blit(smoothedFrame, currentTexture);

                //Draw the texture to the screen
                Graphics.Blit(currentTexture, target);

                //Release the temporary render textures
                RenderTexture.ReleaseTemporary(currentFrame);
                RenderTexture.ReleaseTemporary(prevFrameCopy);
                RenderTexture.ReleaseTemporary(currentFrame);
                
                //Iterate the number of rendered frames if the app is playing
                NumRenderedFrames += Application.isPlaying ? 1 : 0;

                //Release and dispose all the buffers
                ReleaseAndDispose();
            } 
            
            //Otherwise, do nothing
            else Graphics.Blit(src, target);
        }
        
        private void OnGUI() {
            // Render UI elements
            GUI.Label(new Rect(10, 10, 200, 20), "Curr FPS: " + 
                Mathf.Round(1f / Time.unscaledDeltaTime * 10f) / 10f);
            GUI.Label(new Rect(10, 30, 200, 20), "Avg FPS: " + Mathf.Round(1f / avgFPS * 10f) / 10f);
            GUI.Label(new Rect(10, 50, 200, 20), "Avg Time: " + 
                Mathf.Round(Time.unscaledDeltaTime * 10000f) / 10f + "ms");
        }

        public void InitShaders() {
            //Create new materials
            rayTracingMat = new Material(rayTracingShader);
            companionMat = new Material(companionShader);
            smoothingMat = new Material(smoothingShader);

            //Release and dispose the buffers
            ReleaseAndDispose();
        }

        private void Init(RenderTexture src) {
            //Initialize the screen stats
            int width = src.width;
            int height = src.height;
            int depthMode = src.depth;
            
            GraphicsFormat format = src.graphicsFormat;
            bool useMipMaps = src.useMipMap;

            //Initialize the render texture and create it
            currentTexture = new RenderTexture(width, height, depthMode) {
                graphicsFormat = format, enableRandomWrite = true, autoGenerateMips = false, useMipMap = useMipMaps
            };
            currentTexture.Create();

            //Set init to true to prevent bugs
            init = true;
        }

        private void UpdateCameraParams(Camera cam) {
            
            if (rayTracingMat == null)
            {
                rayTracingMat = new Material(rayTracingShader);
                companionMat = new Material(companionShader);
                smoothingMat = new Material(smoothingShader);
            }

            float planeHeight = FocusDistance * Mathf.Tan(cam.fieldOfView * 0.5f * Mathf.Deg2Rad) * 2;
            float planeWidth = planeHeight * cam.aspect;

            rayTracingMat.SetVector(ViewParams, new Vector3(planeWidth, planeHeight, FocusDistance));
            rayTracingMat.SetMatrix(CamLocalToWorldMatrix, cam.transform.localToWorldMatrix);
        }

        private void UpdateMaterialParams() {
            //Set all misc parameters
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
            
            rayTracingMat.SetInt(DebugView, debugView ? 1 : 0);
            rayTracingMat.SetInt(DebugViewMode, debugViewMode);
            
            rayTracingMat.SetInt(BoxDisplayThreshold, boxDisplayThreshold);
            rayTracingMat.SetInt(TriangleDisplayThreshold, triangleDisplayThreshold);
            
            rayTracingMat.SetFloat(SpecularPower, specularPower);
            
            SendMeshes();
        }

        public void HandleMeshes() {
            //Find all meshes in the scene with the RayTracingMesh script attached
            meshes = FindObjectsByType<RayTracingMesh>(FindObjectsSortMode.None);

            handlingMeshes = true;
            
            //Update the mesh data for all meshes
            foreach (RayTracingMesh mesh in meshes) mesh.UpdateMeshData();

            handlingMeshes = false;
        }

        private void SendMeshes() {
            int nodeOffset = 0;
            int triangleOffset = 0;
            
            //Get the total number of triangles in the scene
            int size = meshes.Sum(mesh => mesh.Triangles.Count);

            //Stop if there are no triangles present in the scene
            if (size == 0 || handlingMeshes) return;

            activeMeshNum = 0;
            numLights = 0;
            
            meshesInfos.Clear();
            RandLightPos.Clear();
            RandLightMat.Clear();
            
            foreach (RayTracingMesh mesh in meshes) {
                if (mesh.gameObject.activeInHierarchy) {
                    if (!MeshOffsetInfo.ContainsKey(mesh)) {
                        MeshOffsetInfo.Add(mesh, (nodeOffset, triangleOffset));
                        
                        AllNodes.AddRange(mesh.BVH.AllNodes);
                        AllTriangles.AddRange(mesh.BVH.AllTriangles);
                        
                        nodeOffset += mesh.BVH.AllNodes.Count;
                        triangleOffset += mesh.BVH.AllTriangles.Count;
                        
                    }
                    
                    MeshInfo info = new() {
                        triOffset = MeshOffsetInfo[mesh].triOffset, nodeOffset = MeshOffsetInfo[mesh].nodeOffset,
                        WTLMatrix = mesh.gameObject.transform.worldToLocalMatrix,
                        LTWMatrix = mesh.gameObject.transform.localToWorldMatrix, material = mesh.material
                    };
                    
                    meshesInfos.Add(info);
                    
                    mesh.stats.NodeOffset = MeshOffsetInfo[mesh].nodeOffset;
                    mesh.stats.TriOffset = MeshOffsetInfo[mesh].triOffset;

                    if (mesh.material.emissionStrength > 0) {
                        RandLightPos.Add(mesh.GetComponent<MeshFilter>().sharedMesh
                            .vertices[Random.Range(0, mesh.GetComponent<MeshFilter>().sharedMesh.vertexCount)]);
                        RandLightMat.Add(mesh.material);

                        numLights++;
                    }
                    
                    activeMeshNum++;
                }
            }

            SendMeshesToShader();
        }
        
        private void SendMeshesToShader() {
            //Create BVH buffers
            CreateBuffer(ref triangleBuffer, AllTriangles);
            CreateBuffer(ref nodeBuffer, AllNodes);
            CreateBuffer(ref meshInfoBuffer, meshesInfos);
            CreateBuffer(ref randLightPosBuffer, RandLightPos);
            CreateBuffer(ref randLightMatBuffer, RandLightMat);
            
            //Set BVH buffers data
            triangleBuffer.SetData(AllTriangles);
            nodeBuffer.SetData(AllNodes);
            meshInfoBuffer.SetData(meshesInfos);
            randLightPosBuffer.SetData(RandLightPos);
            randLightMatBuffer.SetData(RandLightMat);
            
            //Send data to shader
            rayTracingMat.SetBuffer(Triangles, triangleBuffer);
            rayTracingMat.SetBuffer(Nodes, nodeBuffer);
            rayTracingMat.SetBuffer(AllMeshInfo, meshInfoBuffer);
            rayTracingMat.SetBuffer(RandLightPositions, randLightPosBuffer);
            rayTracingMat.SetBuffer(RandLightMaterials, randLightMatBuffer);
            
            rayTracingMat.SetInt(NumMeshes, activeMeshNum);
            rayTracingMat.SetInt(NumLights, numLights);
        }

        private static void CreateBuffer<T>(ref ComputeBuffer buffer, List<T> data, int inputStride = 0) where T : struct
        {
            int stride = inputStride == 0 ? GetStride<T>() : inputStride;

            // Only recreate the buffer if necessary
            bool createNewBuffer = buffer == null || !buffer.IsValid() || buffer.count != data.Count || buffer.stride != stride;
            if (createNewBuffer) {
                Release(buffer);
                buffer = new ComputeBuffer(data.Count, stride);
            }

            // Update buffer data (this can be separated from the creation to prevent full recreation)
            buffer.SetData(data);
        }

        private static int GetStride<T>() => System.Runtime.InteropServices.Marshal.SizeOf(typeof(T));

        private void ReleaseAndDispose() {
            triangleBuffer?.Release();
            nodeBuffer?.Release();
            meshInfoBuffer?.Release();
            randLightPosBuffer?.Release();
            randLightMatBuffer?.Release();
            
            triangleBuffer?.Dispose();
            nodeBuffer?.Dispose();
            meshInfoBuffer?.Dispose();
            randLightPosBuffer?.Dispose();
            randLightMatBuffer?.Dispose();
        }

        private static void Release(params ComputeBuffer[] buffers) {
            foreach (ComputeBuffer t in buffers) t?.Release();
        }

        private void OnHierarchyChanged() {
            InitShaders();
            HandleMeshes();
            
            AllNodes.Clear();
            AllTriangles.Clear();
            MeshOffsetInfo.Clear();
        }
    }
}
