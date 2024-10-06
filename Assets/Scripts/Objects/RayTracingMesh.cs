using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Formatters.Binary;
using Unity.Collections;
using Newtonsoft.Json;
using UnityEngine;
using Debug = UnityEngine.Debug;
using Formatting = System.Xml.Formatting;

namespace Objects {
    [ExecuteAlways]
    public class RayTracingMesh : MonoBehaviour {
        private static readonly int Glossiness = Shader.PropertyToID("_Glossiness");

        [SerializeField] private string saveDir = "Assets/Models/BVHData";
        [SerializeField] public RayTracingMaterial material;
        [SerializeField] [ReadOnly] public BvhStats stats;

        private RayTracingMaterial prevMaterial;

        public BVH BVH { get; private set; }
        public List<Triangle> Triangles { get; } = new();

        private Material mat;

        [HideInInspector] public string meshName;
        

        private void Awake() => mat = new Material(Shader.Find("Standard"));

        private void Start() => UpdateMeshData();

        private void Update() {
            if (prevMaterial.color == material.color) return; 
            
            mat.color = material.color;

            mat.SetFloat(Glossiness, material.smoothness);
            GetComponent<MeshRenderer>().material = mat;

            prevMaterial = material;
        }

        public void UpdateMeshData() {
            Triangles.Clear();
            
            Mesh mesh = GetComponent<MeshFilter>().sharedMesh;
            Vector3[] vertices = mesh.vertices;
            Vector3[] normals = mesh.normals;
            int[] indices = mesh.triangles;
            
            meshName = mesh.name;
            string filePath = Path.Combine(saveDir, meshName + "_BVH.json");
            
            // Generate BVH
            // Check if the BVH file exists
            if (File.Exists(filePath))
            {
                try {
                    // Load the BVH file
                    LoadBVHFromFile(filePath);
                }
                catch (Exception ex) {
                    Debug.LogError($"Failed to load BVH: {ex.Message}");
                }
            }
            else
            {
                // Generate a new BVH and save it to file
                BVH = new BVH(vertices, indices, normals);
                SaveBVHToFile(filePath);
            }

            stats = new BvhStats {
                MaxLeafDepth = int.MinValue, 
                MinLeafDepth = int.MaxValue, 
                Triangles = BVH.AllTriangles.Count, 
                NodeCount = BVH.AllNodes.Count,
                LeafCount = BVH.LeafNodes.Count,
                GenTime = BVH.genTime / 1000f
            };

            foreach (int leafDepth in BVH.LeafNodesDepth) {
                stats.MaxLeafDepth = Mathf.Max(stats.MaxLeafDepth, leafDepth);
                stats.MinLeafDepth = Mathf.Min(stats.MinLeafDepth, leafDepth);
            }

            stats.MeanLeafDepth = BVH.LeafNodesDepth.Sum() / BVH.LeafNodesDepth.Count;
            
            int leafNodeTriCount = 0;

            foreach (CNode leaf in BVH.LeafNodes) {
                stats.MaxLeafTri = Mathf.Max(stats.MaxLeafTri, leaf.TrianglesCount);
                stats.MinLeafTri = Mathf.Min(stats.MinLeafTri, leaf.TrianglesCount);

                leafNodeTriCount += leaf.TrianglesCount;
            }

            stats.MeanLeafTri = leafNodeTriCount / BVH.LeafNodes.Count;

            for (int i = 0; i < indices.Length; i += 3) {
                Triangle triangle = new();

                int a = indices[i];
                int b = indices[i + 1];
                int c = indices[i + 2];

                triangle.posA = vertices[a];
                triangle.normalA = normals[a];

                triangle.posB = vertices[b];
                triangle.normalB = normals[b];

                triangle.posC = vertices[c];
                triangle.normalC = normals[c];

                Triangles.Add(triangle);
            }
        }
        
        private void SaveBVHToFile(string filePath)
        {
            if (!Directory.Exists(saveDir)) Directory.CreateDirectory(saveDir);

            using BinaryWriter writer = new(File.Open(filePath, FileMode.Create));
            writer.Write(BVH.genTime); // Save generation time

            // Save Root Node
            WriteNode(writer, BVH.Root);

            // Save all nodes
            writer.Write(BVH.AllNodes.Count);
            foreach (Node node in BVH.AllNodes) WriteNode(writer, node);

            // Save all triangles
            writer.Write(BVH.AllTriangles.Count);
            foreach (Triangle triangle in BVH.AllTriangles) WriteTriangle(writer, triangle);

            // Save leaf nodes
            writer.Write(BVH.LeafNodes.Count);
            foreach (CNode leafNode in BVH.LeafNodes) WriteCNode(writer, leafNode);

            // Save leaf node depths
            writer.Write(BVH.LeafNodesDepth.Count);
            foreach (int depth in BVH.LeafNodesDepth) writer.Write(depth);
        }

        private void LoadBVHFromFile(string filePath) {
            BVH = new BVH();
            
            while (IsFileLocked(new FileInfo(filePath)))
                // Optionally, add a small delay to avoid a busy wait
                System.Threading.Thread.Sleep(100);

            using BinaryReader reader = new(File.Open(filePath, FileMode.Open));
            BVH.genTime = reader.ReadSingle(); // Read generation time

            // Read Root Node
            BVH.Root = ReadNode(reader);

            BVH.AllNodes = new List<Node>();
            BVH.LeafNodes = new List<CNode>();
            BVH.LeafNodesDepth = new List<int>();
            BVH.AllTriangles = new List<Triangle>();

            // Read all nodes
            int nodeCount = reader.ReadInt32();
            for (int i = 0; i < nodeCount; i++) BVH.AllNodes.Add(ReadNode(reader));

            // Read all triangles
            int triangleCount = reader.ReadInt32();
            BVH.AllTriangles.Clear();
            for (int i = 0; i < triangleCount; i++) BVH.AllTriangles.Add(ReadTriangle(reader));

            // Read leaf nodes
            int leafNodeCount = reader.ReadInt32();
            BVH.LeafNodes.Clear();
            for (int i = 0; i < leafNodeCount; i++) BVH.LeafNodes.Add(ReadCNode(reader));

            // Read leaf node depths
            int leafDepthCount = reader.ReadInt32();
            BVH.LeafNodesDepth.Clear();
            for (int i = 0; i < leafDepthCount; i++) BVH.LeafNodesDepth.Add(reader.ReadInt32());
        }
        
        private bool IsFileLocked(FileInfo file)
        {
            FileStream stream = null;

            try
            {
                stream = file.Open(FileMode.Open, FileAccess.Read, FileShare.None);
            }
            catch (IOException)
            {
                // File is locked by another process
                return true;
            }
            finally
            {
                stream?.Close();
            }

            return false;
        }

        private void WriteNode(BinaryWriter writer, Node node)
        {
            WriteVector3(writer, node.BoundsMin);
            WriteVector3(writer, node.BoundsMax);
            writer.Write(node.TriangleIndex);
            writer.Write(node.ChildIndex);
            writer.Write(node.TrianglesCount);
        }

        private Node ReadNode(BinaryReader reader)
        {
            Vector3 boundsMin = ReadVector3(reader);
            Vector3 boundsMax = ReadVector3(reader);
            int triangleIndex = reader.ReadInt32();
            int childIndex = reader.ReadInt32();
            int trianglesCount = reader.ReadInt32();
            return new Node { BoundsMin = boundsMin, BoundsMax = boundsMax, TriangleIndex = triangleIndex, ChildIndex = childIndex, TrianglesCount = trianglesCount };
        }

        private void WriteTriangle(BinaryWriter writer, Triangle triangle)
        {
            WriteVector3(writer, triangle.posA);
            WriteVector3(writer, triangle.posB);
            WriteVector3(writer, triangle.posC);
            WriteVector3(writer, triangle.normalA);
            WriteVector3(writer, triangle.normalB);
            WriteVector3(writer, triangle.normalC);
        }

        private Triangle ReadTriangle(BinaryReader reader)
        {
            Vector3 posA = ReadVector3(reader);
            Vector3 posB = ReadVector3(reader);
            Vector3 posC = ReadVector3(reader);
            Vector3 normalA = ReadVector3(reader);
            Vector3 normalB = ReadVector3(reader);
            Vector3 normalC = ReadVector3(reader);
            return new Triangle(posA, posB, posC, normalA, normalB, normalC);
        }

        private void WriteCNode(BinaryWriter writer, CNode cnode)
        {
            WriteBoundingBox(writer, cnode.Bounds);
            writer.Write(cnode.TriangleIndex);
            writer.Write(cnode.ChildIndex);
            writer.Write(cnode.TrianglesCount);
        }

        private CNode ReadCNode(BinaryReader reader)
        {
            CBoundingBox bounds = ReadBoundingBox(reader);
            int triangleIndex = reader.ReadInt32();
            int childIndex = reader.ReadInt32();
            int trianglesCount = reader.ReadInt32();
            return new CNode { Bounds = bounds, TriangleIndex = triangleIndex, ChildIndex = childIndex, TrianglesCount = trianglesCount };
        }

        private static void WriteVector3(BinaryWriter writer, Vector3 vector)
        {
            writer.Write(vector.x);
            writer.Write(vector.y);
            writer.Write(vector.z);
        }

        private static Vector3 ReadVector3(BinaryReader reader)
        {
            float x = reader.ReadSingle();
            float y = reader.ReadSingle();
            float z = reader.ReadSingle();
            return new Vector3(x, y, z);
        }

        private static void WriteBoundingBox(BinaryWriter writer, CBoundingBox bounds)
        {
            WriteVector3(writer, bounds.Min);
            WriteVector3(writer, bounds.Max);
        }

        private static CBoundingBox ReadBoundingBox(BinaryReader reader)
        {
            Vector3 min = ReadVector3(reader);
            Vector3 max = ReadVector3(reader);
            return new CBoundingBox { Min = min, Max = max };
        }
    }
}
