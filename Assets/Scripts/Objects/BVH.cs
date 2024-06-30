using System.Collections.Generic;
using UnityEngine;

public class BVH {
    
    public readonly Node root;

    public readonly List<Node> AllNodes = new();
    private readonly Triangle[] AllTriangles;
    
    private const int MaxDepth = 10;

    public BVH(Vector3[] vertices, int[] triangleIndices) {
        BoundingBox bounds = new();

        foreach (Vector3 vert in vertices) bounds.GrowToInclude(vert);

        List<Triangle> triangles = new();
        
        for (int i = 0; i < triangleIndices.Length; i += 3) {
            Vector3 a = vertices[triangleIndices[i]];
            Vector3 b = vertices[triangleIndices[i + 1]];
            Vector3 c = vertices[triangleIndices[i + 2]];
            
            triangles.Add(new Triangle(a, b, c));
        }

        AllTriangles = new Triangle[triangles.Count];

        int j = 0;
        foreach (Triangle triangle in triangles) {
            AllTriangles[j] = triangle;
            j++;
        }
        
        root = new Node { Bounds = bounds };
        Split(root);
    }

    private void Split(Node parent, int depth = 0) {
        if (depth == MaxDepth) return;

        Vector3 size = parent.Bounds.Size;
        int splitAxis = size.x > Mathf.Max(size.y, size.z) ? 0 : size.y > size.z ? 1 : 2;
        float splitPos = parent.Bounds.Center[splitAxis];

        parent.ChildIndex = AllNodes.Count;
        Node childA = new(), childB = new();
        AllNodes.Add(childA);
        AllNodes.Add(childB);

        for (int i = parent.TriangleIndex; i < parent.TriangleIndex + parent.TrianglesCount; i++) {
            bool inA = AllTriangles[i].center[splitAxis] < splitPos;
            Node child = inA ? childA : childB;
            child.Bounds.GrowToInclude(AllTriangles[i]);
            child.TrianglesCount++;

            if (inA) {
                int swap = child.TriangleIndex + child.TrianglesCount - 1;
                (AllTriangles[i], AllTriangles[swap]) = (AllTriangles[swap], AllTriangles[i]);
                childB.TriangleIndex++;
            }
        }
        
        Split(childA, depth + 1);
        Split(childB, depth + 1);
    }
}
