using System.Collections.Generic;
using Objects;
using Shapes;
using UnityEngine;
using Triangle = Objects.Triangle;

namespace Helpers {
    
    [ExecuteAlways]
    [ImageEffectAllowedInSceneView]
    public class RayVisualizer : ImmediateModeShapeDrawer {

        [HideInInspector] public List<Triangle> triangles;
        [HideInInspector] public List<Node> nodes;
        
        public override void DrawShapes(Camera cam){
            if (cam.name == "SceneCamera") {
                using (Draw.Command(cam)) {
                    Color col = Color.red;
                    Draw.Thickness = 0.025f;
                    
                    Draw.Line(transform.position, transform.position + transform.forward * 50, col);

                    if (triangles != null) {
                        foreach (Triangle tri in triangles) {
                            Draw.Line(tri.posA + tri.normalA * 0.01f, tri.posB + tri.normalB * 0.01f, col);
                            Draw.Line(tri.posB + tri.normalB * 0.01f, tri.posC + tri.normalC * 0.01f, col);
                            Draw.Line(tri.posC + tri.normalC * 0.01f, tri.posA + tri.normalA * 0.01f, col);

                            col.a = 0.25f;

                            Draw.Triangle(tri.posA + tri.normalA * 0.01f, tri.posB + tri.normalB * 0.01f,
                                tri.posC + tri.normalC * 0.01f, col);
                        }
                    }

                    if (nodes != null) {
                        foreach (Node node in nodes) {
                            bool fill = nodes.IndexOf(node) == 0;
                            col = Color.HSVToRGB(nodes.IndexOf(node) / 6f % 1, 1, 1);
                            
                            //Initialize an array of points for the corners
                            Vector3[] corners = new Vector3[8];

                            // Bottom face
                            corners[0] = new Vector3(node.BoundsMin.x, node.BoundsMin.y, node.BoundsMin.z);
                            corners[1] = new Vector3(node.BoundsMax.x, node.BoundsMin.y, node.BoundsMin.z);
                            corners[2] = new Vector3(node.BoundsMax.x, node.BoundsMin.y, node.BoundsMax.z);
                            corners[3] = new Vector3(node.BoundsMin.x, node.BoundsMin.y, node.BoundsMax.z);

                            // Top face
                            corners[4] = new Vector3(node.BoundsMin.x, node.BoundsMax.y, node.BoundsMin.z);
                            corners[5] = new Vector3(node.BoundsMax.x, node.BoundsMax.y, node.BoundsMin.z);
                            corners[6] = new Vector3(node.BoundsMax.x, node.BoundsMax.y, node.BoundsMax.z);
                            corners[7] = new Vector3(node.BoundsMin.x, node.BoundsMax.y, node.BoundsMax.z);
                            
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
                                col.a = .25f;
                        
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
            }
        }
    }
}
