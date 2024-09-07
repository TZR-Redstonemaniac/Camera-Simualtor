using System;
using UnityEngine;

namespace Objects {
    [Serializable]
    public class CTriangle {
        public Vector3 posA { get; set; }
        public Vector3 posB { get; set; }
        public Vector3 posC { get; set; }
        public Vector3 normalA { get; set; }
        public Vector3 normalB { get; set; }
        public Vector3 normalC { get; set; }
        public Vector3 center => new((posA.x + posB.x + posC.x) / 3, (posA.y + posB.y + posC.y) / 3, (posA.z + posB.z + posC.z) / 3);
        
        public Vector3 Max => Vector3.Max(Vector3.Max(posA, posB), posC);
        public Vector3 Min => Vector3.Min(Vector3.Min(posA, posB), posC);
        

        public CTriangle(Vector3 a, Vector3 b, Vector3 c) {
            posA = a;
            posB = b;
            posC = c;

            normalA = Vector3.zero;
            normalB = Vector3.zero;
            normalC = Vector3.zero;
        }

        public CTriangle(Vector3 a, Vector3 b, Vector3 c, Vector3 normalA, Vector3 normalB, Vector3 normalC) {
            posA = a;
            posB = b;
            posC = c;

            this.normalA = normalA;
            this.normalB = normalB;
            this.normalC = normalC;
        }
    }
}