using System.Collections;
using Helpers;
using UnityEditor;
using UnityEngine;

public class Rotator : MonoBehaviour {
    
    [SerializeField] private float rotateTime = 7;
    [SerializeField] private bool quitAfterRot = true;

    [SerializeField] private FrameRateLogger logger;
    
    private float timeElapsed;
    private bool rev;

    private void Awake() => timeElapsed = -1;

    private void Start() => StartCoroutine(RotateObject());

    private IEnumerator RotateObject()
    {
		try {
			float startRotation = transform.eulerAngles.y;
			float endRotation = startRotation + 360.0f;

			while (timeElapsed < rotateTime) {
				timeElapsed += Time.deltaTime;
				
				float percentage = timeElapsed / rotateTime;
				float newYRotation = Mathf.Lerp(startRotation, endRotation, percentage) % 360.0f;

				transform.eulerAngles = new Vector3(transform.eulerAngles.x, newYRotation, transform.eulerAngles.z);

				yield return null;
			}

			// Reset rotation to avoid floating-point precision issues (optional)
			if (timeElapsed <= 0) transform.eulerAngles = new Vector3(transform.eulerAngles.x, endRotation, transform.eulerAngles.z);
		} finally {
			if (quitAfterRot) {
				logger.SaveData();
				EditorApplication.isPlaying = false;
			}
		}
    }
}
