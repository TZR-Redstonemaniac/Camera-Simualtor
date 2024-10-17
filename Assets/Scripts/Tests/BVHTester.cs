using System;
using System.Collections.Generic;
using System.Linq;
using Helpers;
using Objects;
using Shapes;
using UnityEngine;

namespace Tests {
    [ExecuteAlways]
    public class BVHTester : MonoBehaviour {

        public RayTracingMesh Mesh;
        public RayVisualizer visualizer;

        private List<Node> Nodes;
        private List<MeshTriangle> Triangles;

        private Node finalNode;
        private Node prevNode;


        private void Update() {
            Nodes = Mesh.BVH.AllNodes;
            Triangles = Mesh.BVH.AllTriangles;

            TriangleHitInfo info = RayTriangleTest();

            List<MeshTriangle> drawTriangles = new();
            List<Node> visNodes = new();

            for (int i = info.triIndex; i < info.triIndex + info.triCount; i++) drawTriangles.Add(Triangles[i]);

            visualizer.triangles = drawTriangles;

            // Assume finalNode is already set and is in the Nodes list
            Node currentNode = finalNode;

            while (true) {
                Node? parentNode = FindParent(currentNode);
                if (parentNode.HasValue) {
                    visNodes.Add(parentNode.Value);
                    currentNode = parentNode.Value;
                } else break;
            }

            visNodes.Add(finalNode);
            visNodes.Reverse();

            visualizer.nodes = visNodes;
        }

        private Node? FindParent(Node node) {
            foreach (Node potentialParent in Nodes.Where(potentialParent => potentialParent.ChildIndex != 0 && 
                (Nodes[potentialParent.ChildIndex].Equals(node) || 
                    Nodes[potentialParent.ChildIndex + 1].Equals(node)))) return potentialParent;

            return null;  // Return null if no parent is found
        }
        
        private TriangleHitInfo RayTriangleTest() {
            Node[] nodeStack = new Node[10];
            int stackIndex = 0;
            nodeStack[stackIndex++] = Nodes[0];

            TriangleHitInfo result = default;
            result.dst = float.PositiveInfinity;

            while (stackIndex > 0)
            {
                Node node = nodeStack[--stackIndex];

                if (RayBoundingBox(node.BoundsMin, node.BoundsMax)) {
                    prevNode = node;
                    if (node.ChildIndex == 0)
                    {
                        for (int i = node.TriangleIndex; i < node.TriangleIndex + node.TrianglesCount; i++)
                        {
                            TriangleHitInfo triHitInfo = RayTriangle(Triangles[i]);
                            if (triHitInfo.didHit && triHitInfo.dst < result.dst)
                            {
                                result.didHit = true;
                                result.dst = triHitInfo.dst;
                                result.hitPoint = triHitInfo.hitPoint;
                                result.normal = triHitInfo.normal;
                                result.triIndex = node.TriangleIndex;
                                result.triCount = node.TrianglesCount;
                                finalNode = node;
                            }
                        }
                    }
                    else
                    {
                        nodeStack[stackIndex++] = Nodes[node.ChildIndex + 1];
                        nodeStack[stackIndex++] = Nodes[node.ChildIndex + 0];
                    }
                } else if (!result.didHit) finalNode = prevNode;
            }
            
            return result;
        }

        private TriangleHitInfo RayTriangle(MeshTriangle tri) {
            TriangleHitInfo info = default;
            info.didHit = false;
            
            Vector3 vertex0 = new(tri.posA.x, tri.posA.y, tri.posA.z);
            Vector3 vertex1 = new(tri.posB.x, tri.posB.y, tri.posB.z);
            Vector3 vertex2 = new(tri.posC.x, tri.posC.y, tri.posC.z);
            Vector3 edge1 = new();
            Vector3 edge2 = new();
            Vector3 h = new();
            Vector3 s = new();
            Vector3 q = new();

            const float EPSILON = 1E-8f;
            
            edge1 = vertex1 - vertex0;
            edge2 = vertex2 - vertex0;
            h = Vector3.Cross(transform.forward, edge2);
            double a = Vector3.Dot(edge1, h);

            if (a is > -EPSILON and < EPSILON) return info; // This ray is parallel to this triangle.

            double f = 1.0 / a;
            s = transform.position - vertex0;
            double u = f * Vector3.Dot(s, h);

            if (u is < 0.0 or > 1.0) return info;

            q = Vector3.Cross(s, edge1);
            double v = f * Vector3.Dot(transform.forward, q);

            if (v < 0.0 || u + v > 1.0) return info;

            // At this stage we can compute t to find out where the intersection point is on the line.
            double t = f * Vector3.Dot(edge2, q);
            if (t > EPSILON) // ray intersection
            {
                Vector3 edgeAB = vertex1 - vertex0;
                Vector3 edgeAC = vertex2 - vertex0;
                Vector3 normalVector = Vector3.Normalize(Vector3.Cross(edgeAB, edgeAC));
                
                Vector3 center = new(tri.center.x, tri.center.y, tri.center.z);

                float dst = Vector3.Distance(center, transform.position);

                info.didHit = true;
                info.hitPoint = transform.position + transform.forward * dst;
                info.normal = normalVector;
                info.dst = dst;
                return info;
            } // This means that there is a line intersection but not a ray intersection.

            return info;
        }

        private bool RayBoundingBox(Vector3 boxMin, Vector3 boxMax) {
            Vector3 invDir = new(1 / Vector3.Normalize(transform.forward).x, 1 / Vector3.Normalize(transform.forward).y, 1 / Vector3.Normalize(transform.forward).z);
            Vector3 tMinPre = boxMin - transform.position;
            Vector3 tMaxPre = boxMax - transform.position;
            Vector3 tMin = new(tMinPre.x * invDir.x, tMinPre.y * invDir.y, tMinPre.z * invDir.z);
            Vector3 tMax = new(tMaxPre.x * invDir.x, tMaxPre.y * invDir.y, tMaxPre.z * invDir.z);
            Vector3 t1 = Vector3.Min(tMin, tMax);
            Vector3 t2 = Vector3.Max(tMin, tMax);
            float tNear = Mathf.Max(Mathf.Max(t1.x, t1.y), t1.z);
            float tFar = Mathf.Min(Mathf.Min(t2.x, t2.y), t2.z);
            return tNear <= tFar;
        }

        private struct TriangleHitInfo {
            public bool didHit;
            public float dst;
            public Vector3 hitPoint;
            public Vector3 normal;
            public int triIndex;
            public RayTracingMaterial material;
            public int triCount;
        }
    }
}
