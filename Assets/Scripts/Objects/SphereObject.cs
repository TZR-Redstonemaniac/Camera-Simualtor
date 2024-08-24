using UnityEngine;

namespace Objects {
    [ExecuteAlways]
    public class SphereObject : MonoBehaviour {
        private static readonly int Glossiness = Shader.PropertyToID("_Glossiness");

        [SerializeField] private RayTracingMaterial material;
        public RayTracingMaterial Material => material;

        private Material mat;

        private void Update() {
            mat ??= new Material(Shader.Find("Standard"));

            mat.color = material.color;
            mat.SetFloat(Glossiness, material.smoothness);
            GetComponent<MeshRenderer>().material = mat;
        }
    }
}
