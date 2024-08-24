using Managers;
using UnityEditor;
using UnityEngine;

namespace Editors {
    [CustomEditor(typeof(RayTracingManager))]
    public class RayTracingManagerEditor : Editor {
        
        private string[] debugViewModeOptions = { "Normals", "Box Test Count", "Triangle Test Count" };
        private int selectedDebugViewModeIndex;
        
        public override void OnInspectorGUI()
        {
            // Draw default inspector
            DrawDefaultInspector();

            RayTracingManager rayTracingManager = (RayTracingManager)target;

            // Add a space before the dropdown
            GUILayout.Space(10);

            // Label for dropdown
            EditorGUILayout.LabelField("Debug View Mode");

            // Dropdown options
            selectedDebugViewModeIndex = EditorGUILayout.Popup(selectedDebugViewModeIndex, debugViewModeOptions);

            // Set debugViewMode based on selection
            rayTracingManager.debugViewMode = selectedDebugViewModeIndex;

            // Add a space before the button
            GUILayout.Space(10);

            // Add a space before the button
            GUILayout.Space(10);

            // Add the "Update Meshes" button
            if (GUILayout.Button("Update Meshes"))
            {
                
                //Initialize all shaders
                rayTracingManager.InitShaders();
            
                //Handle the meshes in the scene
                rayTracingManager.HandleMeshes();
            }
        }
    }
}
