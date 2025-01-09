Shader "Custom/CompanionShader" {
    Properties {
        _MainTex ("Albedo (RGB)", 2D) = "white" {}
    }
    SubShader {
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #define FLT_MAX 3.402823466e+38

            struct appdata_t
            {
                float4 vertex : POSITION;
                float2 texcoord : TEXCOORD0;
            };

            struct v2f
            {
                float2 texcoord : TEXCOORD0;
                float4 vertex : SV_POSITION;
            };

            v2f vert(const appdata_t v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.texcoord = v.texcoord;
                return o;
            }

            int _NumRenderedFrames;

            sampler2D _MainTex;
            sampler2D _PrevFrame;
            
            float4 frag(v2f i) : SV_Target {
                //Get the old and current frames
                const float4 oldRender = tex2D(_PrevFrame, i.texcoord);
                const float4 newRender = tex2D(_MainTex, i.texcoord);

                //Accumulate the new render onto the old render
                const float weight = 1.0 / (_NumRenderedFrames + 1);
                float4 accumulatedAvg = saturate(oldRender * (1 - weight) + newRender * weight);

                return accumulatedAvg;
            }
            ENDCG
        }
    }
}