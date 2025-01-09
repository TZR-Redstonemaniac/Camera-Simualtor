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
        public List<MeshTriangle> AllTriangles = new();
        public List<CNode> LeafNodes = new();
        public List<int> LeafNodesDepth = new();

        public float genTime;

        private Stopwatch sw;
        private const int MaxDepth = 32;

        //Blank constructor for when a BVH is loaded in
        public BVH() {
            
        }

        public BVH(Vector3[] vertices, int[] triangleIndices, Vector3[] normals) {
            //Start a stopwatch for calculating generation time
            sw = Stopwatch.StartNew();

            //Create a new bounding box
            CBoundingBox bounds = new();

            //If any of the arrays are null, do not generate a BVH
            if (vertices == null || triangleIndices == null || normals == null) return;

            //Create every triangle present in the mesh and add them to the arrays, then grow the bounds to fit them
            for (int i = 0; i < triangleIndices.Length; i += 3) {
                Vector3 a = vertices[triangleIndices[i]];
                Vector3 b = vertices[triangleIndices[i + 1]];
                Vector3 c = vertices[triangleIndices[i + 2]];
                
                Vector3 normalA = normals[triangleIndices[i]];
                Vector3 normalB = normals[triangleIndices[i + 1]];
                Vector3 normalC = normals[triangleIndices[i + 2]];

                MeshTriangle tri = new(a, b, c, normalA, normalB, normalC);
                CTriangle Ctri = new(a, b, c, normalA, normalB, normalC);
                AllTriangles.Add(tri);
                CAllTriangles.Add(Ctri);
                bounds.GrowToInclude(Ctri);
            }
            
            //Create a root node and split it
            CNode IRoot = new() { Bounds = bounds, TriangleIndex = 0, ChildIndex = 0, TrianglesCount = AllTriangles.Count }; 
            CAllNodes.Add(IRoot);
            Split(IRoot);
            
            //Create new node for all CNodes
            foreach (CNode node in CAllNodes) {
                BoundingBox bound = new() { Min = node.Bounds.Min, Max = node.Bounds.Max };
                AllNodes.Add(new Node { BoundsMin = bound.Min, BoundsMax = bound.Max, TriangleIndex = node.TriangleIndex, 
                    ChildIndex = node.ChildIndex, TrianglesCount = node.TrianglesCount});
            }
            
            //Set the root to the first node
            Root = AllNodes[0];

            //Stop the stopwatch and assign to genTime
            sw.Stop();
            genTime = (int)sw.ElapsedMilliseconds;
        }

        private void Split(CNode parent, int depth = 0) {
            //Choose a split axis, split pos, and the cost of the split
            (int splitAxis, float splitPos, float cost) = ChooseSplit(parent);
            
            //If the max depth has not been reached or the cost of the node is not greater than the parent, continue the split
            if (depth != MaxDepth && cost < NodeCost(parent.Bounds.Size, parent.TrianglesCount)) {
                //Create new child nodes with the parents triangle index
                CNode childA = new() { TriangleIndex = parent.TriangleIndex };
                CNode childB = new() { TriangleIndex = parent.TriangleIndex };

                //Get the last triangle index and loop over every triangle
                int endIndex = parent.TriangleIndex + parent.TrianglesCount;
                for (int i = parent.TriangleIndex; i < endIndex; i++) {
                    //Determine if the current triangle is in the first half, if so then add it
                    bool inA = CAllTriangles[i].center[splitAxis] < splitPos;
                    CNode child = inA ? childA : childB;
                    child.Bounds.GrowToInclude(CAllTriangles[i]);
                    child.TrianglesCount++;

                    //Swap the triangle position in the array so that all triangles of one side are in order
                    if (inA) {
                        int swap = child.TriangleIndex + child.TrianglesCount - 1;
                        (CAllTriangles[i], CAllTriangles[swap]) = (CAllTriangles[swap], CAllTriangles[i]);
                        (AllTriangles[i], AllTriangles[swap]) = (AllTriangles[swap], AllTriangles[i]);
                        childB.TriangleIndex++;
                    }
                }

                //Split the children if both children have triangles
                if (childA.TrianglesCount > 0 && childB.TrianglesCount > 0) {
                    parent.ChildIndex = CAllNodes.Count;
                    CAllNodes.Add(childA);
                    CAllNodes.Add(childB);

                    Split(childA, depth + 1);
                    Split(childB, depth + 1);
                } 
                
                //Mark the parent as a leaf node otherwise
                else {
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
            //Initialize the split pos and axis
            float bestSplitPos = 0;
            int bestSplitAxis = 0;
            
            //Set a value for number of tests to do
            const int numSplitTests = 5;

            //Set best cost to max value
            float bestCost = float.MaxValue;

            //Set the bounds to variables to make it easier to call
            Vector3 boundsMin = node.Bounds.Min;
            Vector3 boundsMax = node.Bounds.Max;

            //Loop over every axis
            for (int axis = 0; axis < 3; axis++) {
                //Try as many splits as defined
                for (int i = 0; i < numSplitTests; i++) {
                    //Get the percentage the split encompasses
                    float splitT = (i + 1) / (numSplitTests + 1f);
                    
                    //Get the split pos on the axis based on the percentage covered
                    float splitPos = Mathf.Lerp(boundsMin[axis], boundsMax[axis], splitT);
                    
                    //Evaluate the split cost
                    float cost = EvaluateSplit(node, axis, splitPos);
                    
                    //If the cost is less than the best cost, set best split to current split
                    if (cost < bestCost) {
                        bestCost = cost;
                        bestSplitPos = splitPos;
                        bestSplitAxis = axis;
                    }
                }
            }
    
            return (bestSplitAxis, bestSplitPos, bestCost);
        }

        private float EvaluateSplit(CNode node, int splitAxis, float splitPos) {
            //Set new bounding boxes and the vars for the number of triangles on each side
            CBoundingBox boundsLeft = new();
            CBoundingBox boundsRight = new();
            int numOnLeft = 0;
            int numOnRight = 0;

            //Get the last triangle index
            int endIndex = node.TriangleIndex + node.TrianglesCount;
            
            //Loop over every triangle in the node
            for (int i = node.TriangleIndex; i < endIndex; i++)
            {
                CTriangle tri = CAllTriangles[i];
                
                //Add the triangle to the bound on its side
                if (tri.center[splitAxis] < splitPos) {
                    boundsLeft.GrowToInclude(tri);
                    numOnLeft++;
                } else {
                    boundsRight.GrowToInclude(tri);
                    numOnRight++;
                }
            }

            //Determine the cost of each half and add it
            float costA = NodeCost(boundsLeft.Size, numOnLeft);
            float costB = NodeCost(boundsRight.Size, numOnRight);
            return costA + costB;
        }

        private float NodeCost(Vector3 size, int numTriangles) {
            //Determine the node cost by multiplying the number of triangles and the size of the bounds
            float halfArea = size.x * size.y + size.x * size.z + size.y * size.z;
            
            return halfArea * numTriangles;
        }
    }
}
