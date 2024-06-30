using UnityEngine;

public class BoundingBox {
    
    public Vector3 Max = Vector3.one * float.NegativeInfinity;
    public Vector3 Min = Vector3.one * float.PositiveInfinity;
    public Vector3 Center => (Min + Max) * 0.5f;
    
    public Vector3 Size => new(
        Max.x - Min.x,
        Max.y - Min.y,
        Max.z - Min.z
    );

    public void GrowToInclude(Vector3 point) {
        Min = Vector3.Min(Min, point);
        Max = Vector3.Max(Max, point);
    }

    public void GrowToInclude(Triangle triangle) {
        GrowToInclude(triangle.posA);
        GrowToInclude(triangle.posB);
        GrowToInclude(triangle.posC);
    }
}