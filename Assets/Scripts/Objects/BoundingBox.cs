using System;
using UnityEngine;

namespace Objects {
    [Serializable]
    public struct BoundingBox {

        public Vector3 Max;
        public Vector3 Min;
        public Vector3 Center => (Min + Max) * 0.5f;
        public Vector3 Size;

        public void GrowToInclude(Vector3 point) {
            Max = Vector3.Max(Max, point);
            Min = Vector3.Min(Min, point);

            Size = new Vector3(Max.x - Min.x, Max.y - Min.y, Max.z - Min.z);
        }

        public void GrowToInclude(Triangle triangle) {
            Vector3 a = new(triangle.posA.x, triangle.posA.y, triangle.posA.z);
            Vector3 b = new(triangle.posB.x, triangle.posB.y, triangle.posB.z);
            Vector3 c = new(triangle.posC.x, triangle.posC.y, triangle.posC.z);
            
            Vector3 min = Vector3.Min(Vector3.Min(a, b), c);
            Vector3 max = Vector3.Max(Vector3.Max(a, b), c);
            
            Min.x = min.x < Min.x ? min.x : Min.x;
            Min.y = min.y < Min.y ? min.y : Min.y;
            Min.z = min.z < Min.z ? min.z : Min.z;
            Max.x = max.x > Max.x ? max.x : Max.x;
            Max.y = max.y > Max.y ? max.y : Max.y;
            Max.z = max.z > Max.z ? max.z : Max.z;

            Size = new Vector3(Max.x - Min.x, Max.y - Min.y, Max.z - Min.z);
        }
    }
}
