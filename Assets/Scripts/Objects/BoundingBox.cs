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

        public void GrowToInclude(MeshTriangle meshTriangle) {
            Vector3 a = new(meshTriangle.posA.x, meshTriangle.posA.y, meshTriangle.posA.z);
            Vector3 b = new(meshTriangle.posB.x, meshTriangle.posB.y, meshTriangle.posB.z);
            Vector3 c = new(meshTriangle.posC.x, meshTriangle.posC.y, meshTriangle.posC.z);
            
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
