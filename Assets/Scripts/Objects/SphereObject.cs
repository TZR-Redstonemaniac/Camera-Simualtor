using UnityEngine;

[ExecuteAlways]
public class SphereObject : MonoBehaviour {
    private static readonly int Glossiness = Shader.PropertyToID("_Glossiness");

    public RayTracingMaterial material;

    private Material mat;

    private void Update() {
        if (mat == null) mat = new Material(Shader.Find("Standard"));

        mat.color = material.color;
        mat.SetFloat(Glossiness, material.smoothness);
        GetComponent<MeshRenderer>().material = mat;
    }
}