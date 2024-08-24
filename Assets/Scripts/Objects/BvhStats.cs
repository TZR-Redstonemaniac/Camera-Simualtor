using System;
using Unity.Collections;
using UnityEngine;

namespace Objects {
    [Serializable]
    public struct BvhStats {
        [ReadOnly] public float GenTime;
        [ReadOnly] public int Triangles;
        [ReadOnly] public int NodeCount;
        [ReadOnly] public int LeafCount;
        
        [Header("Leaf Depth")]
        [ReadOnly] public int MaxLeafDepth;
        [ReadOnly] public int MinLeafDepth;
        [ReadOnly] public int MeanLeafDepth;
        
        [Header("Leaf Tri")]
        [ReadOnly] public int MaxLeafTri;
        [ReadOnly] public int MinLeafTri;
        [ReadOnly] public float MeanLeafTri;
    }
}