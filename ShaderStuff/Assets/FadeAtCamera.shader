Shader "Custom/Fade At Camera Unlit"
{
	Properties
	{
		_Tint ("Tint Color", Color) = (0.5, 0.5, 0.5, 0.5)
		_MainTex ("Texture", 2D) = "white" {}
	}

	Category{
		
	}

	SubShader
	{
		Tags { "RenderType"="Opaque" }
		LOD 100

		Blend SrcAlpha OneMinusSrcAlpha
	//	ZWrite Off

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				UNITY_FOG_COORDS(1)
				float4 vertex : SV_POSITION;
				float dist : TEXCOORD1;
				float pos : TEXCOORD2;
			};

			sampler2D _MainTex;
			float4 _Tint;
			float4 _MainTex_ST;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				UNITY_TRANSFER_FOG(o,o.vertex);
				o.pos = length(UnityObjectToViewPos(v.vertex)) - 1; //use this for cut fade
			//	o.dist = WorldSpaceViewDir(v.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				// sample the texture
				fixed4 col = tex2D(_MainTex, i.uv);
			//	fixed4 col = (_Tint * tex.r);

			//	float k = length(i.pos);
				col.a *= i.pos -.5; //and this for cut fade
				// apply fog
				UNITY_APPLY_FOG(i.fogCoord, col);
				return clamp(col, 0, 1);
			}
			ENDCG
		}
	}
}
