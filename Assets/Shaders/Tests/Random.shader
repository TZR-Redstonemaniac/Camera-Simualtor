Shader "Custom/Random" {
    Properties {
        
    }
    
    SubShader {
        Pass {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #define FLT_MAX 3.402823466e+38

            struct appdata_t {
                float4 vertex : POSITION;
                float2 texcoord : TEXCOORD0;
            };

            struct v2f {
                float2 texcoord : TEXCOORD0;
                float4 vertex : SV_POSITION;
            };

            v2f vert(const appdata_t v) {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.texcoord = v.texcoord;
                return o;
            }

            float RandomValue(inout uint state) {
                state = state * 747796405 + 2891336453;
                uint result = (state >> (state >> 28) + 4 ^ state) * 277803737;
                result = result >> 22 ^ result;
                return result / 4294967295.0;
            }

            float RandomValueNormalDistribution(inout uint state) {
                const float theta = 2 * 3.1415296 * RandomValue(state);
                const float rho = sqrt(-2 * log(RandomValue(state)));
                return rho * cos(theta);
            }

            float3 RandomDirection(inout uint state) {
                float x = RandomValueNormalDistribution(state);
                float y = RandomValueNormalDistribution(state);
                float z = RandomValueNormalDistribution(state);
                const float3 pointInCube = float3(x, y, z);
                return normalize(pointInCube);
            }

            float3 RandomHemisphereDirection(const float3 normal, inout uint state) {
                const float3 dir = RandomDirection(state);
                return dir * sign(dot(normal, dir));
            }

            float4 frag(const v2f i) : SV_Target {
                uint2 numPixels = _ScreenParams.xy;
                uint2 pixelCoord = i.texcoord * numPixels;
                const uint pixelIndex = pixelCoord.y * numPixels.x + pixelCoord.x;

                const uint rngState = pixelIndex;
                return 1;
            }
            ENDCG
        }
    }
}