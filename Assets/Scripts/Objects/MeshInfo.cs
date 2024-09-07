using UnityEngine;

namespace Objects {
	public struct MeshInfo {
		public int triOffset;
		public int nodeOffset;
		public Matrix4x4 WTLMatrix;
		public Matrix4x4 LTWMatrix;
		public RayTracingMaterial material;
	}
}