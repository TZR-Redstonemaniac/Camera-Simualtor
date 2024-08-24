using System.Collections.Generic;
using Managers;
using Objects;
using Shapes;
using UnityEditor;
using UnityEngine;
using Triangle = Objects.Triangle;

namespace Helpers {
    [ExecuteAlways]
    [ImageEffectAllowedInSceneView]
    public class BoundingBoxVisualizer : ImmediateModeShapeDrawer {

        [Header("References")]
        [SerializeField] private RayTracingManager manager;
        
        [Header("Visualize")]
        [SerializeField] private bool visualizeFocus;
        [SerializeField] private bool visualizeBoundingBox;
        [SerializeField] private bool visualizeTriangles;
        [SerializeField] private bool fill;
        [SerializeField] private bool boxFill;
        [SerializeField] private int boxLimit;
        [SerializeField] [Range(0, 32)] private int visDepth;
        [SerializeField] [Min(0)] private int child;
        
        public override void DrawShapes(Camera cam) {
            //Visualize the focus of the camera
            if (visualizeFocus) {
                //Calculate the height and width of the frustum
                float frustumHeight = 2.0f * Mathf.Tan(cam.fieldOfView * 0.5f * Mathf.Deg2Rad) * manager.FocusDistance;
                float frustumWidth = frustumHeight * cam.aspect;

                //Get all four frustum lines
                Vector3 topLeftFrustumLine = cam.transform.position + cam.transform.right * (-frustumWidth * 0.5f) +
                    cam.transform.up * (frustumHeight * 0.5f) + cam.transform.forward * manager.FocusDistance;
                Vector3 topRightFrustumLine = cam.transform.position + cam.transform.right * (frustumWidth * 0.5f) +
                    cam.transform.up * (frustumHeight * 0.5f) + cam.transform.forward * manager.FocusDistance;
                Vector3 bottomRightFrustumLine = cam.transform.position + cam.transform.right * (frustumWidth * 0.5f) -
                    cam.transform.up * (frustumHeight * 0.5f) + cam.transform.forward * manager.FocusDistance;
                Vector3 bottomLeftFrustumLine = cam.transform.position + cam.transform.right * (-frustumWidth * 0.5f) -
                    cam.transform.up * (frustumHeight * 0.5f) + cam.transform.forward * manager.FocusDistance;

                //Draw only if the scene camera is being used
                if (Camera.current.name == "SceneCamera") {
                    using (Draw.Command(Camera.current)) {
                        //Set the color and its alpha
                        Color color = Color.green;
                        color.a = 0.25f;
                        
                        //Draw the focus
                        Draw.Quad(topRightFrustumLine, topLeftFrustumLine, bottomLeftFrustumLine, bottomRightFrustumLine, 
                            color);
                    }
                }
            }

            //Visualize the bounding box of meshes in the scene
            if (visualizeBoundingBox) {
                foreach (RayTracingMesh mesh in manager.meshes)
                    //Only visualize the bounding box of active meshes
                    if (mesh.gameObject.activeInHierarchy) DrawNodes(mesh.BVH.Root, mesh.BVH.AllNodes, mesh.BVH.AllTriangles, mesh
                        .transform.localToWorldMatrix);
            }
            
            SceneView.RepaintAll();
        }
        
        private void DrawNodes(Node node, List<Node> allNodes, List<Triangle> allTriangles, Matrix4x4 matrix, int depth = 0, 
            int childIndex = 0) {
            //If the depth goes beyond the depth we choose, stop
            if (depth > visDepth) return;

            //Select a color based on the depth
            Color col = Color.HSVToRGB(depth / 6f % 1, 1, 1);
            
            //If the depth if not the final depth, set the alpha to 1/4 and disable the vox filling
            if (depth < visDepth) col.a = 0.25f;
            bool fill = visualizeTriangles && depth == visDepth ? childIndex == child : depth == visDepth;

            //Draw the bounding box
            if (Mathf.Abs(visDepth - depth) <= boxLimit) DrawBoundingBox(node.BoundsMin, node.BoundsMax, matrix, col, fill);
            
            if (childIndex == child && visualizeTriangles) DrawTriangles(allTriangles, node.TriangleIndex, node.TrianglesCount);
            
            //If there are no children, stop
            if (node.ChildIndex == 0 && depth != 0) return;
            
            //Draw the two child bounding boxes
            DrawNodes(allNodes[node.ChildIndex + 0], allNodes, allTriangles, matrix, depth, childIndex);
            DrawNodes(allNodes[node.ChildIndex + 1], allNodes, allTriangles, matrix, depth + 1, node.ChildIndex + 1);
        }
        
        private void DrawBoundingBox(Vector3 boundMin, Vector3 boundMax, Matrix4x4 matrix, Color col, bool fill) {
            //Initialize an array of points for the corners
            Vector3[] corners = new Vector3[8];
            
            //Translate bounds to world space
            boundMin = matrix.MultiplyPoint(boundMin);
            boundMax = matrix.MultiplyPoint(boundMax);

            // Bottom face
            corners[0] = new Vector3(boundMin.x, boundMin.y, boundMin.z);
            corners[1] = new Vector3(boundMax.x, boundMin.y, boundMin.z);
            corners[2] = new Vector3(boundMax.x, boundMin.y, boundMax.z);
            corners[3] = new Vector3(boundMin.x, boundMin.y, boundMax.z);

            // Top face
            corners[4] = new Vector3(boundMin.x, boundMax.y, boundMin.z);
            corners[5] = new Vector3(boundMax.x, boundMax.y, boundMin.z);
            corners[6] = new Vector3(boundMax.x, boundMax.y, boundMax.z);
            corners[7] = new Vector3(boundMin.x, boundMax.y, boundMax.z);
        
            //Draw if the camera is the scene camera
            //if (Camera.current.name == "SceneCamera") {
                /*using (Draw.Command(Camera.current)) {
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
                    if (fill && boxFill) {
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
                }*/
                
                //Draw the bottom face
                Debug.DrawLine(corners[0], corners[1], col, 0.1f, true);
                Debug.DrawLine(corners[1], corners[2], col, 0.1f, true);
                Debug.DrawLine(corners[2], corners[3], col, 0.1f, true);
                Debug.DrawLine(corners[3], corners[0], col, 0.1f, true);

                // Draw the top face
                Debug.DrawLine(corners[4], corners[5], col, 0.1f, true);
                Debug.DrawLine(corners[5], corners[6], col, 0.1f, true);
                Debug.DrawLine(corners[6], corners[7], col, 0.1f, true);
                Debug.DrawLine(corners[7], corners[4], col, 0.1f, true);

                // Draw the vertical lines
                Debug.DrawLine(corners[0], corners[4], col, 0.1f, true);
                Debug.DrawLine(corners[1], corners[5], col, 0.1f, true);
                Debug.DrawLine(corners[2], corners[6], col, 0.1f, true);
                Debug.DrawLine(corners[3], corners[7], col, 0.1f, true);
            //}
        }

        private void DrawTriangles(List<Triangle> allTriangles, int triIndex, int triCount) {
            using (Draw.Command(Camera.current)) {
                Draw.Color = new Color(1, 0, 0, 0.25f);

                for (int i = triIndex; i < triIndex + triCount; i++) {
                    Triangle tri = allTriangles[i];
                    Draw.Line(tri.posA + tri.normalA * 0.01f, tri.posB + tri.normalB * 0.01f);
                    Draw.Line(tri.posB + tri.normalB * 0.01f, tri.posC + tri.normalC * 0.01f);
                    Draw.Line(tri.posC + tri.normalC * 0.01f, tri.posA + tri.normalA * 0.01f);

                    Draw.Triangle(tri.posA + tri.normalA * 0.01f, tri.posB + tri.normalB * 0.01f, 
                        tri.posC + tri.normalC * 0.01f);
                }
            }
        }
    }
}