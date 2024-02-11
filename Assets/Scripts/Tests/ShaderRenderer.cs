using UnityEngine;

[ExecuteAlways]
public class ShaderRenderer : MonoBehaviour {
    [SerializeField] private Shader shader;

    private Material rayTracingMat;

    private void Start() => rayTracingMat = new Material(shader);

    private void OnRenderImage(RenderTexture source, RenderTexture destination) {
        if (Camera.current.name != "SceneCamera") Graphics.Blit(null, destination, rayTracingMat);
        else Graphics.Blit(source, destination);
    }
}