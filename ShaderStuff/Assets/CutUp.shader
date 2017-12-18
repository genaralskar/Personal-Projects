Shader "Custom/Cutup" {
	Properties {
		_MainTex ("Texture", 2D) = "white" {}
		_BumpMap ("Bumpmap", 2D) = "bump" {}
		_Angle("Angle", range(0, 1)) = 0
		_CutSize("Cut Size", range(.5, 10)) = .5
		_FadeDistance("Fade Distance", range(1, 5)) = 1
	//	_SliceSize("Sice Size", range(0, 1)) = .5
	}

	SubShader{
		Tags { "RenderType" = "Opaque" }
		Cull Back
		CGPROGRAM

		#pragma surface surf Lambert vertex:vert
		#pragma target 3.0
		struct Input {
			float2 uv_MainTex;
			float2 uv_BumpMap;
			float3 worldPos;
			float4 screenPos;
			float pos;
		};
			
		float _FadeDistance;
		void vert (inout appdata_full v, out Input o) {
		//	_SliceSize = length(UnityObjectToViewPos(v.vertex));
			UNITY_INITIALIZE_OUTPUT(Input,o);
        	o.pos = (length(UnityObjectToViewPos(v.vertex)) - _FadeDistance) / 2;
    	}

		sampler2D _MainTex;
		sampler2D _BumpMap;
		float _Angle;
		float _CutSize;
		
		void surf (Input IN, inout SurfaceOutput o) {
			float d = 1 - clamp(IN.pos, 0, 1) * 1;
		//	float d = 0;
			float2 screenCoord = IN.screenPos.xy / IN.screenPos.w;
			screenCoord *= float2(16,9); //use aspect ratio
			clip(frac((screenCoord.x) * _CutSize) - d);
			clip(frac((screenCoord.y) * _CutSize) - d);
			o.Albedo = tex2D (_MainTex, IN.uv_MainTex).rgb;
			o.Normal = UnpackNormal (tex2D (_BumpMap, IN.uv_BumpMap));
		}
		ENDCG
	}
	Fallback "Diffuse"
}
