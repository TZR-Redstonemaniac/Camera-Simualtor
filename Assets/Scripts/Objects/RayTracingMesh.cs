using System;
using System.Collections.Generic;
using System.Linq;
using Helpers;
using Unity.Collections;
using UnityEngine;

namespace Objects {
    [ExecuteAlways]
    public class RayTracingMesh : MonoBehaviour {
        private static readonly int Glossiness = Shader.PropertyToID("_Glossiness");

        [SerializeField] private RayTracingMaterial material;
        [SerializeField] [ReadOnly] private BvhStats stats;
        private RayTracingMaterial prevMaterial;

        public BVH BVH { get; private set; }
        public List<Triangle> Triangles { get; } = new();

        private Material mat;

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

            // Generate BVH
            BVH = new BVH(vertices, indices, normals);

            stats = new BvhStats {
                MaxLeafDepth = int.MinValue, 
                MinLeafDepth = int.MaxValue, 
                Triangles = BVH.AllTriangles.Count, 
                NodeCount = BVH.AllNodes.Count,
                LeafCount = BVH.LeafNodes.Count,
                GenTime = BVH.genTime
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

        private Vector3 LocalToWorld(Vector3 vertex) {
            Vector3 objectPosition = transform.position;
            Quaternion objectRotation = transform.rotation;
            Vector3 objectScale = transform.lossyScale;

            // Apply scaling
            Vector3 scaledVertex = Vector3.Scale(vertex, objectScale);

            // Apply rotation
            Vector3 rotatedVertex = objectRotation * scaledVertex;

            // Apply position
            Vector3 worldVertex = objectPosition + rotatedVertex;

            return worldVertex;
        }
    }
}
