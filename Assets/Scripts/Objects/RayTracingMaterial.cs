using System;
using UnityEngine;

namespace Objects {
    [Serializable]
    public struct RayTracingMaterial {
        [Header("Colors")]
        public Color color;
        public Color emissionColor;
        public Color specularColor;
        
        [Header("Values")]
        public float emissionStrength;
        [Range(0, 1)] public float smoothness;
        [Range(0, 1)] public float specularProbability;
    }
}
