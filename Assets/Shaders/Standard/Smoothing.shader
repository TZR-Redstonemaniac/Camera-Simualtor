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

            sampler2D _MainTex;
            float _SmoothFactor;

            fixed4 frag(v2f i) : SV_Target
            {
                // Sample four surrounding pixels with bilinear filtering
                const fixed4 center = tex2D(_MainTex, i.texcoord);
                const fixed4 up = tex2D(_MainTex, i.texcoord + half2(0.0, _SmoothFactor / 100000));
                const fixed4 down = tex2D(_MainTex, i.texcoord - half2(0.0, _SmoothFactor / 100000));
                const fixed4 right = tex2D(_MainTex, i.texcoord + half2(_SmoothFactor / 100000, 0.0));
                const fixed4 left = tex2D(_MainTex, i.texcoord - half2(_SmoothFactor / 100000, 0.0));

                // Average the sampled colors based on smooth factor
                fixed4 color = (center + up + down + right + left) / 5.0;

                return color;
            }
            ENDCG
        }
    }
}