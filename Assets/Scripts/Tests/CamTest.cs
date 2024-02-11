using System.Collections;
using System.Collections.Generic;
using Shapes;
using UnityEngine;

[ExecuteAlways]
public class CamTest : MonoBehaviour {

    [SerializeField] private bool run;
    [SerializeField] private Vector2 debugPointCount;
    [SerializeField] private float radius;
    
    private Camera cam;

    // Update is called once per frame
    private void Start() {
        cam = Camera.main;
    }

    private void Update()
    {
        if (!run) return;
        
        Transform camT = cam.transform;

        float planeHeight = cam.nearClipPlane * Mathf.Tan(cam.fieldOfView * 0.5f * Mathf.Deg2Rad) * 2;
        float planeWidth = planeHeight * cam.aspect;

        Vector3 bottomLeftLocal = new Vector3(-planeWidth / 2, -planeHeight / 2, cam.nearClipPlane);

        for (int x = 0; x < debugPointCount.x; x++) {
            for (int y = 0; y < debugPointCount.y; y++) {
                float tx = x / (debugPointCount.x - 1f);
                float ty = y / (debugPointCount.y - 1f);

                Vector3 pointLocal = bottomLeftLocal + new Vector3(planeWidth * tx, planeHeight * ty);
                Vector3 point = camT.position + camT.right * pointLocal.x + camT.up * pointLocal.y + camT.forward * pointLocal.z;
                
                using (Draw.Command( cam )) Draw.Sphere(point, radius, Color.white);
            }
        }
    }
}
