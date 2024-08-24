using UnityEngine;

namespace Helpers {
    public class CamMover : MonoBehaviour { 
        [SerializeField] private Transform target;
        [SerializeField] private Vector3 targetOffset;
        [SerializeField] private float distance = 5.0f;
        [SerializeField] private float maxDistance = 20;
        [SerializeField] private float minDistance = .6f;
        [SerializeField] private float xSpeed = 200.0f;
        [SerializeField] private float ySpeed = 200.0f;
        [SerializeField] private int yMinLimit = -80;
        [SerializeField] private int yMaxLimit = 80;
        [SerializeField] private int zoomRate = 40;
        [SerializeField] private float panSpeed = 0.3f;
        [SerializeField] private float zoomDampening = 5.0f;

        private float xDeg;
        private float yDeg;
        private float currentDistance;
        private float desiredDistance;
        private Quaternion currentRotation;
        private Quaternion desiredRotation;
        private Quaternion rotation;
        private Vector3 position;

        private void Start() => Init();
        private void OnEnable() => Init();

        private void Init() {
            //If there is no target, create a temporary target at 'distance' from the cameras current viewpoint
            if (!target) {
                GameObject go = new("Cam Target") { 
                    transform = { position = transform.position + transform.forward * distance } 
                };
                target = go.transform;
            }

            distance = Vector3.Distance(transform.position, target.position);
            currentDistance = distance;
            desiredDistance = distance;

            //be sure to grab the current rotations as starting points.
            position = transform.position;
            rotation = transform.rotation;
            currentRotation = transform.rotation;
            desiredRotation = transform.rotation;

            xDeg = Vector3.Angle(Vector3.right, transform.right);
            yDeg = Vector3.Angle(Vector3.up, transform.up);
        }

        /*
         * Camera logic on LateUpdate to only update after all character movement logic has been handled.
         */
        private void LateUpdate() {
            Vector2 view = GetComponent<Camera>().ScreenToViewportPoint( Input.mousePosition );
            bool isOutside = view.x < 0 || view.x > 1 || view.y < 0 || view.y > 1;
            
            if (isOutside) return;
            
            // If Control and Alt and Middle button? ZOOM!
            if (Input.GetMouseButton(0) && Input.GetKey(KeyCode.LeftAlt) && Input.GetKey(KeyCode.LeftControl)) 
                desiredDistance -= Input.GetAxis("Mouse Y") * Time.deltaTime * zoomRate * 0.125f * Mathf.Abs(desiredDistance);

            // If middle mouse and left alt are selected? ORBIT
            else if (Input.GetMouseButton(0)) {
                xDeg += Input.GetAxis("Mouse X") * xSpeed * 0.02f;
                yDeg -= Input.GetAxis("Mouse Y") * ySpeed * 0.02f;

                ////////OrbitAngle

                //Clamp the vertical axis for the orbit
                yDeg = ClampAngle(yDeg, yMinLimit, yMaxLimit);

                // set camera rotation
                desiredRotation = Quaternion.Euler(yDeg, xDeg, 0);
                currentRotation = transform.rotation;

                rotation = Quaternion.Lerp(currentRotation, desiredRotation, Time.deltaTime * zoomDampening);
                transform.rotation = rotation;
            }

            // otherwise if middle mouse is selected, we pan by way of transforming the target in screenspace
            else if (Input.GetMouseButton(0) && Input.GetKey(KeyCode.LeftAlt)) {
                //grab the rotation of the camera so we can move in a psuedo local XY space
                target.rotation = transform.rotation;
                target.Translate(Vector3.right * (-Input.GetAxis("Mouse X") * panSpeed));
                target.Translate(transform.up * (-Input.GetAxis("Mouse Y") * panSpeed), Space.World);
            }

            ////////Orbit Position

            // affect the desired Zoom distance if we roll the scrollwheel
            desiredDistance -= Input.GetAxis("Mouse ScrollWheel") * Time.deltaTime * zoomRate * Mathf.Abs(desiredDistance);

            //clamp the zoom min/max
            desiredDistance = Mathf.Clamp(desiredDistance, minDistance, maxDistance);

            // For smoothing of the zoom, lerp distance
            currentDistance = Mathf.Lerp(currentDistance, desiredDistance, Time.deltaTime * zoomDampening);

            // calculate position based on the new currentDistance
            position = target.position - (rotation * Vector3.forward * currentDistance + targetOffset);
            transform.position = position;
        }

        private static float ClampAngle(float angle, float min, float max) {
            if (angle < -360) angle += 360;
            if (angle > 360) angle -= 360;

            return Mathf.Clamp(angle, min, max);
        }
    }
}

