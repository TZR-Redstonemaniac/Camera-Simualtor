using System;
using System.IO;
using UnityEngine;

public class Screenshot : MonoBehaviour {
    public void TakeScreenshot() {
        // Create a directory for the screenshots if it doesn't exist
        string directory = Application.dataPath + "/Renders";
        if (!Directory.Exists(directory)) Directory.CreateDirectory(directory);

        // Capture the screenshot
        string fileName = "Render" + DateTime.Now.ToString("yyyy-MM-dd_HH-mm-ss") + ".png";
        string filePath = Path.Combine(directory, fileName);
        ScreenCapture.CaptureScreenshot(filePath);
        Debug.Log("Screenshot saved: " + filePath);
    }
}