﻿using UnityEditor;
using UnityEngine;

[CustomEditor(typeof(Screenshot))]
public class ScreenshotEditor : Editor {
    public override void OnInspectorGUI() {
        Screenshot screenshot = (Screenshot)target;

        if (GUILayout.Button("Take Screenshot")) screenshot.TakeScreenshot();
    }
}