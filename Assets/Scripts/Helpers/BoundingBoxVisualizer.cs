using System.Collections.Generic;
using Managers;
using Objects;
using Shapes;
using UnityEditor;
using UnityEngine;

namespace Helpers {
    [ExecuteAlways]
    [ImageEffectAllowedInSceneView]
    public class BoundingBoxVisualizer : ImmediateModeShapeDrawer {

        [Header("References")]
        [SerializeField] private RayTracingManager manager;
        
        [Header("Visualize")]
        [SerializeField] private bool visualizeFocus;
        [SerializeField] private bool visualizeBoundingBox;
        [SerializeField] private bool fill;
        [SerializeField] private bool boxFill;
        [SerializeField] private int boxLimit;
        [SerializeField] [Range(0, 32)] private int visDepth;
        
        public override void DrawShapes(Camera cam) {
            //Visualize the focus of the camera
            if (visualizeFocus) {
                //Calculate the height and width of the frustum
                float frustumHeight = 2.0f * Mathf.Tan(cam.fieldOfView * 0.5f * Mathf.Deg2Rad) * 
                                      manager.FocusDistance;
                float frustumWidth = frustumHeight * cam.aspect;

                //Get all four frustum lines
                Vector3 topLeftFrustumLine = cam.transform.position + cam.transform.right * 
                                             (-frustumWidth * 0.5f) +
                    cam.transform.up * (frustumHeight * 0.5f) + cam.transform.forward * 
                                             manager.FocusDistance;
                Vector3 topRightFrustumLine = cam.transform.position + cam.transform.right * 
                                              (frustumWidth * 0.5f) +
                    cam.transform.up * (frustumHeight * 0.5f) + cam.transform.forward *
                                              manager.FocusDistance;
                Vector3 bottomRightFrustumLine = cam.transform.position + cam.transform.right *
                    (frustumWidth * 0.5f) -
                    cam.transform.up * (frustumHeight * 0.5f) + cam.transform.forward *
                    manager.FocusDistance;
                Vector3 bottomLeftFrustumLine = cam.transform.position + cam.transform.right * 
                    (-frustumWidth * 0.5f) -
                    cam.transform.up * (frustumHeight * 0.5f) + cam.transform.forward * 
                    manager.FocusDistance;

                //Draw only if the scene camera is being used
                if (Camera.current.name == "SceneCamera") {
                    using (Draw.Command(Camera.current)) {
                        //Set the color and its alpha
                        Color color = Color.green;
                        color.a = 0.25f;
                        
                        //Draw the focus
                        Draw.Quad(topRightFrustumLine, topLeftFrustumLine, bottomLeftFrustumLine, 
                            bottomRightFrustumLine, color);
                    }
                }
            }

            //Visualize the bounding box of meshes in the scene
            if (visualizeBoundingBox) {
                foreach (RayTracingMesh mesh in manager.meshes)
                    //Only visualize the bounding box of active meshes
                    if (mesh.gameObject.activeInHierarchy) 
                        DrawNodes(mesh.BVH.Root, mesh.BVH.AllNodes, mesh);
            }
            
            SceneView.RepaintAll();
        }
        
        private void DrawNodes(Node node, List<Node> allNodes, RayTracingMesh mesh, int depth = 0) {
            //If the depth goes beyond the depth we choose, stop
            if (depth > visDepth) return;

            //Select a color based on the depth
            Color col = Color.HSVToRGB(depth / 6f % 1, 1, 1);
            
            //If the depth if not the final depth, set the alpha to 1/4 and disable the vox filling
            if (depth < visDepth) col.a = 0.25f;
            bool fill = depth == visDepth;

            //Draw the bounding box
            if (Mathf.Abs(visDepth - depth) <= boxLimit) 
                DrawBoundingBox(node.BoundsMin, node.BoundsMax, col, fill, mesh);
            
            //If there are no children, stop
            if (node.ChildIndex == 0 && depth != 0) return;
            
            //Draw the two child bounding boxes
            DrawNodes(allNodes[node.ChildIndex + 0], allNodes, mesh, depth + 1);
            DrawNodes(allNodes[node.ChildIndex + 1], allNodes, mesh, depth + 1);
        }
        
        private static void DrawBoundingBox(Vector3 boundMin, Vector3 boundMax, Color col, 
            bool fill, RayTracingMesh mesh) {
            //Initialize an array of points for the corners
            Vector3[] corners = new Vector3[8];

            // Bottom face
            corners[0] = LocalToWorld(new Vector3(boundMin.x, boundMin.y, boundMin.z), mesh
                .transform);
            corners[1] = LocalToWorld(new Vector3(boundMax.x, boundMin.y, boundMin.z), mesh
                .transform);
            corners[2] = LocalToWorld(new Vector3(boundMax.x, boundMin.y, boundMax.z), mesh
                .transform);
            corners[3] = LocalToWorld(new Vector3(boundMin.x, boundMin.y, boundMax.z), mesh
                .transform);

            // Top face
            corners[4] = LocalToWorld(new Vector3(boundMin.x, boundMax.y, boundMin.z), mesh.
                transform);
            corners[5] = LocalToWorld(new Vector3(boundMax.x, boundMax.y, boundMin.z), mesh.
                transform);
            corners[6] = LocalToWorld(new Vector3(boundMax.x, boundMax.y, boundMax.z), mesh.
                transform);
            corners[7] = LocalToWorld(new Vector3(boundMin.x, boundMax.y, boundMax.z), mesh.
                transform);
        
            //Draw if the camera is the scene camera
            if (Camera.current.name == "SceneCamera") {
                using (Draw.Command(Camera.current)) {
                    //Make the line thin
                    Draw.Thickness = 0.025f;
                    
                    //Enable dashes on the parent boxes
                    Draw.UseDashes = !fill;
                    
                    //Draw the bottom face
                    Draw.Line(corners[0], corners[1], col);
                    Draw.Line(corners[1], corners[2], col);
                    Draw.Line(corners[2], corners[3], col);
                    Draw.Line(corners[3], corners[0], col);

                    // Draw the top face
                    Draw.Line(corners[4], corners[5], col);
                    Draw.Line(corners[5], corners[6], col);
                    Draw.Line(corners[6], corners[7], col);
                    Draw.Line(corners[7], corners[4], col);

                    // Draw the vertical lines
                    Draw.Line(corners[0], corners[4], col);
                    Draw.Line(corners[1], corners[5], col);
                    Draw.Line(corners[2], corners[6], col);
                    Draw.Line(corners[3], corners[7], col);
                    
                    //If the box is the final one, fill it
                    if (fill) {
                        col.a = .1f;
                        
                        // Draw Bottom Face
                        Draw.Quad(corners[0], corners[1], corners[2], corners[3], col);

                        // Draw Top Face
                        Draw.Quad(corners[4], corners[5], corners[6], corners[7], col);

                        // Draw Front Face
                        Draw.Quad(corners[3], corners[2], corners[6], corners[7], col);

                        // Draw Back Face
                        Draw.Quad(corners[0], corners[1], corners[5], corners[4], col);

                        // Draw Left Face
                        Draw.Quad(corners[0], corners[3], corners[7], corners[4], col);

                        // Draw Right Face
                        Draw.Quad(corners[1], corners[2], corners[6], corners[5], col);
                    }
                }
            }
        }
        
        private static Vector3 LocalToWorld(Vector3 vertex, Transform transform) {
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
}