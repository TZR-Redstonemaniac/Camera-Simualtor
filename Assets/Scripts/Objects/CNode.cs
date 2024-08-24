using System;

namespace Objects {
    [Serializable]
    public class CNode {
        public int ChildIndex;
        public int TriangleIndex;
        public int TrianglesCount;
        public CBoundingBox Bounds = new();
    }
}
