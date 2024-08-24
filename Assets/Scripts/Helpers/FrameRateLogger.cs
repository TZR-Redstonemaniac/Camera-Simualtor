using System;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using UnityEditor;

namespace Helpers {
    public class FrameRateLogger : MonoBehaviour {
        
        [SerializeField] private bool log;
        [SerializeField] private string csvFilePath;
        [SerializeField] private string filePrefix = "FrameRateLog";
        
        private string fileName;
        private string finalCsvFilePath;
        private List<string> csvData = new();
        private float startTime;
        private int frameCount;
        private float deltaTime;


        private void Start()
        {
            startTime = Time.time;
            fileName = filePrefix;
            finalCsvFilePath = Path.Combine(csvFilePath, fileName + ".csv");

            // Add CSV header
            csvData.Add("Time(s),Frame Rate(fps)");
        }

        private void Update()
        {
            if (!log) return;
            
			float fps = 1 / Time.unscaledDeltaTime;
			float currentTime = Time.time - startTime;
			
			if (currentTime >= 1) csvData.Add($"{currentTime - 1:F2},{fps:F2}");
        }

        public void SaveData() => File.WriteAllLines(finalCsvFilePath, csvData);
    }
}
