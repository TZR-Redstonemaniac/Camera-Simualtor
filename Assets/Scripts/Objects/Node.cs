using System;
using UnityEngine;

namespace Objects {
    [Serializable]
    public struct Node {
        public int ChildIndex;
        public int TriangleIndex;
        public int TrianglesCount;
        public Vector3 BoundsMin;
        public Vector3 BoundsMax;
    }
}
