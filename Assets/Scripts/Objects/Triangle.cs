using UnityEngine;

public class Triangle {
    
    public Vector3 posA, posB, posC;
    public Vector3 normalA, normalB, normalC;
    public Vector3 center;

    public Triangle() {
        
    }

    public Triangle(Vector3 a, Vector3 b, Vector3 c) {
        posA = a;
        posB = b;
        posC = c;
        
        center = new Vector3((posA.x + posB.x + posC.x) / 3, (posA.y + posB.y + posC.y) / 3, (posA.z + posB.z + posC.z) / 3);
    }
    
    public Triangle(Vector3 a, Vector3 b, Vector3 c, Vector3 normalA, Vector3 normalB, Vector3 normalC) {
        posA = a;
        posB = b;
        posC = c;
        
        this.normalA = normalA;
        this.normalB = normalB;
        this.normalC = normalC;
        
        center = new Vector3((posA.x + posB.x + posC.x) / 3, (posA.y + posB.y + posC.y) / 3, (posA.z + posB.z + posC.z) / 3);
    }
}
