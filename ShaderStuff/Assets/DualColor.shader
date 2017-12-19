Shader "Custom/Dual Color"
{
    Properties
    {
		_BaseColor ("Base Color", Color) = (1, 1, 1, 1)
		_ShadowColor ("Shadow Color", Color) = (.5, .5, .5 , 1)
		_DepthTint ("Depth Tint", Color) = (.5, .5, .5 , 1)
		_Amount ("Amount", Range(.8, 10)) = 1
    }
    SubShader
    {
        Pass
        {
            // indicate that our pass is the "base" pass in forward
            // rendering pipeline. It gets ambient and main directional
            // light data set up; light direction in _WorldSpaceLightPos0
            // and color in _LightColor0
            Tags {"LightMode"="ForwardBase"}
        
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc" // for UnityObjectToWorldNormal
            #include "UnityLightingCommon.cginc" // for _LightColor0

            struct v2f
            {
                float2 uv : TEXCOORD0;
                fixed4 diff : COLOR0; // diffuse lighting color
                float4 vertex : SV_POSITION;
				float dist : TEXCOORD1;
            };

			float _Amount;

            v2f vert (appdata_base v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = v.texcoord;
                // get vertex normal in world space
                half3 worldNormal = UnityObjectToWorldNormal(v.normal);
                // dot product between normal and light direction for
                // standard diffuse (Lambert) lighting
                half nl = max(0, dot(worldNormal, _WorldSpaceLightPos0.xyz));
                // factor in the light color
                o.diff = nl * _Amount;

				o.dist = length(UnityObjectToViewPos(v.vertex));
                return o;
            }
            
			float4 _BaseColor;
			float4 _ShadowColor;
			float4 _DepthTint;

            fixed4 frag (v2f i) : SV_Target
            {
                // sample texture
                fixed4 col = _BaseColor;
				fixed4 shadow = _ShadowColor;
				fixed4 depthTint = _DepthTint * i.dist;
                // multiply by lighting
            //	col *= round(clamp(i.diff, 0, 1));
				shadow *= 1 - round(i.diff);
				col *= round(i.diff);
				col += shadow;
			//	col *= depthTint;
                return col;
            }
            ENDCG
        }
    }

}