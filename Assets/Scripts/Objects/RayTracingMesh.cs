using System.Collections.Generic;
using UnityEngine;

[ExecuteAlways]
public class RayTracingMesh : MonoBehaviour {
    private static readonly int Glossiness = Shader.PropertyToID("_Glossiness");

    public RayTracingMaterial material;
    public BVH bvh;

    public readonly List<Triangle> triangles = new();

    private Material mat;
    private Mesh mesh;

    private void Start() => UpdateMeshData();

    private void Update() {
        if (mat == null) mat = new Material(Shader.Find("Standard"));

        mat.color = material.color;
        mat.SetFloat(Glossiness, material.smoothness);
        GetComponent<MeshRenderer>().material = mat;
    }

    public void UpdateMeshData() {
        triangles.Clear();

        mesh = GetComponent<MeshFilter>().sharedMesh;
        Vector3[] vertices = mesh.vertices;
        Vector3[] normals = mesh.normals;
        int[] indices = mesh.triangles;

        for (int i = 0; i < vertices.Length; i++) {
            Vector3 temp = vertices[i];
            vertices[i] = LocalToWorld(temp);
        }

        bvh = new BVH(vertices, indices);

        for (int i = 0; i < indices.Length; i += 3) {
            Triangle triangle = new();
    
            int a = indices[i];
            int b = indices[i + 1];
            int c = indices[i + 2];

            triangle.posA = LocalToWorld(vertices[a]);
            triangle.normalA = normals[a];

            triangle.posB = LocalToWorld(vertices[b]);
            triangle.normalB = normals[b];

            triangle.posC = LocalToWorld(vertices[c]);
            triangle.normalC = normals[c];

            triangles.Add(triangle);
        }
    }

    private Vector3 LocalToWorld(Vector3 vertex) {
        Vector3 objectPosition = transform.position;
        Quaternion objectRotation = transform.rotation;
        Vector3 objectScale = transform.lossyScale;

        // Apply scaling
        Vector3 scaledVertex = Vector3.Scale(vertex, objectScale);

        // Apply rotation
        Vector3 rotatedVertex = objectRotation * scaledVertex;

        // Apply position
        Vector3 worldVertex = objectPosition + rotatedVertex;

        return worldVertex;
    }
}