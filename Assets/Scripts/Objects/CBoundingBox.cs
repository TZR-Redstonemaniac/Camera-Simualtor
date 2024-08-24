using System;
using UnityEngine;

namespace Objects {
    [Serializable]
    public class CBoundingBox {
        
        public Vector3 Max = Vector3.one * float.NegativeInfinity;
        public Vector3 Min = Vector3.one * float.PositiveInfinity;
        public Vector3 Center => (Min + Max) * 0.5f;
        public Vector3 Size => new(Max.x - Min.x, Max.y - Min.y, Max.z - Min.z);

        public void GrowToInclude(Vector3 point) {
            Max = Vector3.Max(Max, point);
            Min = Vector3.Min(Min, point);
        }

        public void GrowToInclude(CTriangle triangle) {
            Min.x = triangle.Min.x < Min.x ? triangle.Min.x : Min.x;
            Min.y = triangle.Min.y < Min.y ? triangle.Min.y : Min.y;
            Min.z = triangle.Min.z < Min.z ? triangle.Min.z : Min.z;
            Max.x = triangle.Max.x > Max.x ? triangle.Max.x : Max.x;
            Max.y = triangle.Max.y > Max.y ? triangle.Max.y : Max.y;
            Max.z = triangle.Max.z > Max.z ? triangle.Max.z : Max.z;
        }
    }
}
