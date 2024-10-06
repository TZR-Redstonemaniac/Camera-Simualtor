using System;
using System.Collections.Generic;
using System.Diagnostics;
using UnityEngine;

namespace Objects {
    [Serializable]
    public class BVH {

        public Node Root;
        private readonly List<CNode> CAllNodes = new();
        private readonly List<CTriangle> CAllTriangles = new();

        public List<Node> AllNodes = new();
        public List<Triangle> AllTriangles = new();
        public List<CNode> LeafNodes = new();
        public List<int> LeafNodesDepth = new();

        public float genTime;

        private Stopwatch sw;
        private const int MaxDepth = 32;

        public BVH() {
            
        }

        public BVH(Vector3[] vertices, int[] triangleIndices, Vector3[] normals) {
            sw = Stopwatch.StartNew();

            CBoundingBox bounds = new();

            if (vertices == null || triangleIndices == null) return;

            for (int i = 0; i < triangleIndices.Length; i += 3) {
                Vector3 a = vertices[triangleIndices[i]];
                Vector3 b = vertices[triangleIndices[i + 1]];
                Vector3 c = vertices[triangleIndices[i + 2]];
                
                Vector3 normalA = normals[triangleIndices[i]];
                Vector3 normalB = normals[triangleIndices[i + 1]];
                Vector3 normalC = normals[triangleIndices[i + 2]];

                Triangle tri = new(a, b, c, normalA, normalB, normalC);
                CTriangle Ctri = new(a, b, c, normalA, normalB, normalC);
                AllTriangles.Add(tri);
                CAllTriangles.Add(Ctri);
                bounds.GrowToInclude(Ctri);
            }
            

            CNode IRoot = new() { Bounds = bounds, TriangleIndex = 0, ChildIndex = 0, 
                TrianglesCount = AllTriangles.Count }; 
            CAllNodes.Add(IRoot);
            Split(IRoot);
            
            BoundingBox bound = new() { Min = IRoot.Bounds.Min, Max = IRoot.Bounds.Max };
            
            foreach (CNode node in CAllNodes) {
                bound = new BoundingBox { Min = node.Bounds.Min, Max = node.Bounds.Max };
                AllNodes.Add(new Node { BoundsMin = bound.Min, BoundsMax = bound.Max, TriangleIndex = node.TriangleIndex, 
                    ChildIndex = node.ChildIndex, TrianglesCount = node.TrianglesCount});
            }
            
            Root = AllNodes[0];

            sw.Stop();
            genTime = (int)sw.ElapsedMilliseconds;
        }

        private void Split(CNode parent, int depth = 0) {
            (int splitAxis, float splitPos, float cost) = ChooseSplit(parent);
            if (depth != MaxDepth && cost < NodeCost(parent.Bounds.Size, parent.TrianglesCount)) {
                CNode childA = new() { TriangleIndex = parent.TriangleIndex };
                CNode childB = new() { TriangleIndex = parent.TriangleIndex };

                int endIndex = parent.TriangleIndex + parent.TrianglesCount;
                for (int i = parent.TriangleIndex; i < endIndex; i++)
                {
                    bool inA = CAllTriangles[i].center[splitAxis] < splitPos;
                    CNode child = inA ? childA : childB;
                    child.Bounds.GrowToInclude(CAllTriangles[i]);
                    child.TrianglesCount++;

                    if (inA)
                    {
                        int swap = child.TriangleIndex + child.TrianglesCount - 1;
                        (CAllTriangles[i], CAllTriangles[swap]) = (CAllTriangles[swap], CAllTriangles[i]);
                        (AllTriangles[i], AllTriangles[swap]) = (AllTriangles[swap], AllTriangles[i]);
                        childB.TriangleIndex++;
                    }
                }


                if (childA.TrianglesCount > 0 && childB.TrianglesCount > 0) {
                    parent.ChildIndex = CAllNodes.Count;
                    CAllNodes.Add(childA);
                    CAllNodes.Add(childB);

                    Split(childA, depth + 1);
                    Split(childB, depth + 1);
                } else {
                    LeafNodes.Add(parent);
                    LeafNodesDepth.Add(depth);
                }
            } else {
                parent.ChildIndex = 0;
                LeafNodes.Add(parent);
                LeafNodesDepth.Add(depth);
            }
        }

        private (int axis, float pos, float cost) ChooseSplit(CNode node) {
            float bestSplitPos = 0;
            int bestSplitAxis = 0;
            const int numSplitTests = 5;

            float bestCost = float.MaxValue;

            Vector3 boundsMin = node.Bounds.Min;
            Vector3 boundsMax = node.Bounds.Max;

            for (int axis = 0; axis < 3; axis++)
            {
                for (int i = 0; i < numSplitTests; i++)
                {
                    float splitT = (i + 1) / (numSplitTests + 1f);
                    float splitPos = Mathf.Lerp(boundsMin[axis], boundsMax[axis], splitT);
                    float cost = EvaluateSplit(node, axis, splitPos);
                    if (cost < bestCost)
                    {
                        bestCost = cost;
                        bestSplitPos = splitPos;
                        bestSplitAxis = axis;
                    }
                }
            }
    
            return (bestSplitAxis, bestSplitPos, bestCost);
        }


        private float EvaluateSplit(CNode node, int splitAxis, float splitPos) {
            CBoundingBox boundsLeft = new();
            CBoundingBox boundsRight = new();
            int numOnLeft = 0;
            int numOnRight = 0;

            int endIndex = node.TriangleIndex + node.TrianglesCount;
            for (int i = node.TriangleIndex; i < endIndex; i++)
            {
                CTriangle tri = CAllTriangles[i];
                if (tri.center[splitAxis] < splitPos)
                {
                    boundsLeft.GrowToInclude(tri);
                    numOnLeft++;
                }
                else
                {
                    boundsRight.GrowToInclude(tri);
                    numOnRight++;
                }
            }


            float costA = NodeCost(boundsLeft.Size, numOnLeft);
            float costB = NodeCost(boundsRight.Size, numOnRight);
            return costA + costB;
        }

        private float NodeCost(Vector3 size, int numTriangles) {
            float halfArea = size.x * size.y + size.x * size.z + size.y * size.z;
            
            return halfArea * numTriangles;
        }
    }
}
