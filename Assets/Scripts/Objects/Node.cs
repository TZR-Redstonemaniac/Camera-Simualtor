using UnityEngine;

namespace Objects {
    public struct Node {
        public int ChildIndex;
        public int TriangleIndex;
        public int TrianglesCount;
        public Vector3 BoundsMin;
        public Vector3 BoundsMax;
    }
}
