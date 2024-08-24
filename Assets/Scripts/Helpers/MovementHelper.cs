using UnityEngine;

namespace Helpers {
    public static class MovementHelper {
        public static Vector2 GetResultingPosition(Vector2 startPosition, float angleDegrees, float distance) {
            // Convert angle from degrees to radians and adjust for coordinate system
            float angleRadians = (90 - angleDegrees) * Mathf.Deg2Rad;

            // Calculate the change in x and y coordinates
            float deltaX = Mathf.Cos(angleRadians) * distance;
            float deltaY = Mathf.Sin(angleRadians) * distance;

            // Calculate the resulting position
            Vector2 resultingPosition = startPosition + new Vector2(deltaX, deltaY);

            return resultingPosition;
        }

        public static float GetAngleInDegrees(Vector2 point1, Vector2 point2) {
            // Calculate the vector from point1 to point2
            Vector2 direction = point2 - point1;

            // Calculate the angle in radians using Mathf.Atan2
            float angleRadians = Mathf.Atan2(direction.y, direction.x);

            // Convert the angle from radians to degrees
            float angleDegrees = angleRadians * Mathf.Rad2Deg;

            // Adjust the angle to be in the range of 0 to 360 degrees
            if (angleDegrees < 0) { angleDegrees += 360; }

            return angleDegrees;
        }
    }
}
