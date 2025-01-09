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
        public List<MeshTriangle> Triangles { get; } = new();

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
            //Clear the current list of triangles
            Triangles.Clear();
            
            //Get the vertices, normals, and indices of the mesh
            Mesh mesh = GetComponent<MeshFilter>().sharedMesh;
            Vector3[] vertices = mesh.vertices;
            Vector3[] normals = mesh.normals;
            int[] indices = mesh.triangles;
            
            //Set the mesh name and the location to save the BVH data
            meshName = mesh.name;
            string filePath = Path.Combine(saveDir, meshName + "_BVH.json");
            
            // Check if the BVH file exists
            if (File.Exists(filePath)) {
                try {
                    // Load the BVH file
                    LoadBVHFromFile(filePath);
                }
                catch (Exception ex) {
                    Debug.LogError($"Failed to load BVH: {ex.Message}");
                }
            } else {
                // Generate a new BVH and save it to file
                BVH = new BVH(vertices, indices, normals);
                SaveBVHToFile(filePath);
            }

            //Create a new stats object and save the data to it
            stats = new BvhStats {
                MaxLeafDepth = int.MinValue, 
                MinLeafDepth = int.MaxValue, 
                Triangles = BVH.AllTriangles.Count, 
                NodeCount = BVH.AllNodes.Count,
                LeafCount = BVH.LeafNodes.Count,
                GenTime = BVH.genTime / 1000f
            };
            
            //Save the max and min leaf depth into stats
            foreach (int leafDepth in BVH.LeafNodesDepth) {
                stats.MaxLeafDepth = Mathf.Max(stats.MaxLeafDepth, leafDepth);
                stats.MinLeafDepth = Mathf.Min(stats.MinLeafDepth, leafDepth);
            }

            //Save the mean leaf depth to stats
            stats.MeanLeafDepth = BVH.LeafNodesDepth.Sum() / BVH.LeafNodesDepth.Count;
            
            //Save the max and min leaf tri count into stats
            int leafNodeTriCount = 0;
            foreach (CNode leaf in BVH.LeafNodes) {
                stats.MaxLeafTri = Mathf.Max(stats.MaxLeafTri, leaf.TrianglesCount);
                stats.MinLeafTri = Mathf.Min(stats.MinLeafTri, leaf.TrianglesCount);

                leafNodeTriCount += leaf.TrianglesCount;
            }

            //Save the mean leaf tri count to stats
            stats.MeanLeafTri = (float)leafNodeTriCount / BVH.LeafNodes.Count;

            //Create a new triangle and add it to the triangle array
            for (int i = 0; i < indices.Length; i += 3) {
                MeshTriangle meshTriangle = new();

                int a = indices[i];
                int b = indices[i + 1];
                int c = indices[i + 2];

                meshTriangle.posA = vertices[a];
                meshTriangle.normalA = normals[a];

                meshTriangle.posB = vertices[b];
                meshTriangle.normalB = normals[b];

                meshTriangle.posC = vertices[c];
                meshTriangle.normalC = normals[c];

                Triangles.Add(meshTriangle);
            }
        }
        
        private void SaveBVHToFile(string filePath) {
            //If the file directory does not exist, create it
            if (!Directory.Exists(saveDir)) Directory.CreateDirectory(saveDir);

            //Open the file into a binary writer
            using BinaryWriter writer = new(File.Open(filePath, FileMode.Create));
            
            //Save generation time
            writer.Write(BVH.genTime); 

            // Save Root Node
            WriteNode(writer, BVH.Root);

            // Save all nodes
            writer.Write(BVH.AllNodes.Count);
            foreach (Node node in BVH.AllNodes) WriteNode(writer, node);

            // Save all triangles
            writer.Write(BVH.AllTriangles.Count);
            foreach (MeshTriangle triangle in BVH.AllTriangles) WriteTriangle(writer, triangle);

            // Save leaf nodes
            writer.Write(BVH.LeafNodes.Count);
            foreach (CNode leafNode in BVH.LeafNodes) WriteCNode(writer, leafNode);

            // Save leaf node depths
            writer.Write(BVH.LeafNodesDepth.Count);
            foreach (int depth in BVH.LeafNodesDepth) writer.Write(depth);
        }

        private void LoadBVHFromFile(string filePath) {
            //Create a new BVH to load data into
            BVH = new BVH();
            
            //Wait if the file is locked to avoid errors
            while (IsFileLocked(new FileInfo(filePath)))
                System.Threading.Thread.Sleep(100);

            //Open the file into the reader
            using BinaryReader reader = new(File.Open(filePath, FileMode.Open));
            
            // Read generation time
            BVH.genTime = reader.ReadSingle(); 

            // Read Root Node
            BVH.Root = ReadNode(reader);

            //Create new lists to load data into
            BVH.AllNodes = new List<Node>();
            BVH.LeafNodes = new List<CNode>();
            BVH.LeafNodesDepth = new List<int>();
            BVH.AllTriangles = new List<MeshTriangle>();

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
            //Create a blank stream
            FileStream stream = null;

            try {
                //Attempt to open the file into the stream
                stream = file.Open(FileMode.Open, FileAccess.Read, FileShare.None);
            }
            catch (IOException) {
                //Return true if the file is locked by another process
                return true;
            }
            finally {
                //Close the stream if it has been opened
                stream?.Close();
            }

            //Return false if the file was not locked
            return false;
        }

        private void WriteNode(BinaryWriter writer, Node node)
        {
            //Write each individual data of a node
            WriteVector3(writer, node.BoundsMin);
            WriteVector3(writer, node.BoundsMax);
            writer.Write(node.TriangleIndex);
            writer.Write(node.ChildIndex);
            writer.Write(node.TrianglesCount);
        }

        private Node ReadNode(BinaryReader reader)
        {
            //Read each individual chunk of data for a node
            Vector3 boundsMin = ReadVector3(reader);
            Vector3 boundsMax = ReadVector3(reader);
            int triangleIndex = reader.ReadInt32();
            int childIndex = reader.ReadInt32();
            int trianglesCount = reader.ReadInt32();
            return new Node { BoundsMin = boundsMin, BoundsMax = boundsMax, TriangleIndex = triangleIndex, ChildIndex = childIndex, 
                TrianglesCount = trianglesCount };
        }

        private void WriteTriangle(BinaryWriter writer, MeshTriangle meshTriangle)
        {
            //Write each data point of the triangle
            WriteVector3(writer, meshTriangle.posA);
            WriteVector3(writer, meshTriangle.posB);
            WriteVector3(writer, meshTriangle.posC);
            WriteVector3(writer, meshTriangle.normalA);
            WriteVector3(writer, meshTriangle.normalB);
            WriteVector3(writer, meshTriangle.normalC);
        }

        private MeshTriangle ReadTriangle(BinaryReader reader)
        {
            //Read all the data for a triangle
            Vector3 posA = ReadVector3(reader);
            Vector3 posB = ReadVector3(reader);
            Vector3 posC = ReadVector3(reader);
            Vector3 normalA = ReadVector3(reader);
            Vector3 normalB = ReadVector3(reader);
            Vector3 normalC = ReadVector3(reader);
            return new MeshTriangle(posA, posB, posC, normalA, normalB, normalC);
        }

        private void WriteCNode(BinaryWriter writer, CNode cnode)
        {
            //Write each data of a CNode
            WriteBoundingBox(writer, cnode.Bounds);
            writer.Write(cnode.TriangleIndex);
            writer.Write(cnode.ChildIndex);
            writer.Write(cnode.TrianglesCount);
        }

        private CNode ReadCNode(BinaryReader reader)
        {
            //Read all the data of a CNode
            CBoundingBox bounds = ReadBoundingBox(reader);
            int triangleIndex = reader.ReadInt32();
            int childIndex = reader.ReadInt32();
            int trianglesCount = reader.ReadInt32();
            return new CNode { Bounds = bounds, TriangleIndex = triangleIndex, ChildIndex = childIndex, TrianglesCount = trianglesCount };
        }

        private static void WriteVector3(BinaryWriter writer, Vector3 vector)
        {
            //Write each value for the Vector3
            writer.Write(vector.x);
            writer.Write(vector.y);
            writer.Write(vector.z);
        }

        private static Vector3 ReadVector3(BinaryReader reader)
        {
            //Read each value for the Vector3
            float x = reader.ReadSingle();
            float y = reader.ReadSingle();
            float z = reader.ReadSingle();
            return new Vector3(x, y, z);
        }

        private static void WriteBoundingBox(BinaryWriter writer, CBoundingBox bounds)
        {
            //Write each data of a bounding box
            WriteVector3(writer, bounds.Min);
            WriteVector3(writer, bounds.Max);
        }

        private static CBoundingBox ReadBoundingBox(BinaryReader reader)
        {
            //Read the data for a bounding box
            Vector3 min = ReadVector3(reader);
            Vector3 max = ReadVector3(reader);
            return new CBoundingBox { Min = min, Max = max };
        }
    }
}
