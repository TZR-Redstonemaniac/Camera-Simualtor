using Shapes;
using UnityEngine;

public class IntersectionTester : MonoBehaviour {
    [Header("Origin")] [SerializeField] private Vector2 pos;

    [SerializeField] private float rad;

    [Header("Triangle")] [SerializeField] private Vector2 positionA;

    [SerializeField] private Vector2 positionB;
    [SerializeField] private Vector2 positionC;

    [Header("Config")] [SerializeField] private Camera cam;

    [SerializeField] private float rayLen;

    private void Update() {
        Vector3 mousePos = cam.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y,
            cam.transform.position.z * -1));

        float dir = MovementHelper.GetAngleInDegrees(pos, mousePos);
        Vector2 vectorDir = new(Mathf.Sin(dir * Mathf.Deg2Rad), Mathf.Cos(dir * Mathf.Deg2Rad));
        Vector2 endPos = pos + vectorDir * rayLen;

        using (Draw.Command(cam)) {
            Draw.LineGeometry = LineGeometry.Volumetric3D;
            Draw.ThicknessSpace = ThicknessSpace.Pixels;
            Draw.Thickness = 4;

            Draw.Line(pos, endPos, Color.gray, Color.gray);

            Draw.Triangle(positionA, positionB, positionC, Color.white);
            Draw.Disc(pos, rad, DiscColors.Flat(Color.white));
        }

        DoesIntersect(vectorDir);
    }

    private void DoesIntersect(Vector2 dir) {
        Vector3 edgeAB = positionB - positionA;
        Vector3 edgeAC = positionC - positionA;
        Vector3 normalVector = Vector3.Cross(edgeAB, edgeAC);
        Vector3 ao = pos - positionA;
        Vector3 dao = Vector3.Cross(ao, dir);

        float determinant = -Vector3.Dot(dir, normalVector);
        float invDet = 1 / determinant;

        float dst = Vector3.Dot(ao, normalVector) * invDet;
        float u = Vector3.Dot(edgeAC, dao) * invDet;
        float v = -Vector3.Dot(edgeAB, dao) * invDet;
        float w = 1 - u - v;

        Debug.Log(normalVector + ", " + dir);

        if (determinant < 1E-6 || dst < 0 || u < 0 || v < 0 || w < 0) return;

        Vector3 p1 = pos + dir * dst;

        using (Draw.Command(cam)) Draw.Disc(p1, rad, DiscColors.Flat(Color.red));
    }
}