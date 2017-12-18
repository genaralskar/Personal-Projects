// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

Shader "Custom/CutUpAroundObj" {
	Properties {
		_MainTex ("Texture", 2D) = "white" {}
		_BumpMap ("Bumpmap", 2D) = "bump" {}
		_Angle("Angle", range(0, 1)) = 0
		_ObjPos("Object Position", vector) = (0,0,0,0)
		_CutSize("Cut Size", range(.5, 10)) = .5
		_FadeDistance("Fade Distance", range(.1, 1)) = 1
		_GroundAmount("Ground Amount", range(1, 10)) = 1
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
			o.worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
    	}

		sampler2D _MainTex;
		sampler2D _BumpMap;
		float _Angle;
		float _CutSize;
		float4 _ObjPos;
		float _GroundAmount;
		
		void surf (Input IN, inout SurfaceOutput o) {
			float dist = clamp(distance(IN.worldPos, _ObjPos) - _GroundAmount, 0, 1);
			//float dist = distance(IN.worldPos, _ObjPos) / _FadeDistance; //give a positive number, bigger further away
			
			float d = 1 - clamp(IN.pos, 0, 1) * 1;
			float2 screenCoord = IN.screenPos.xy / IN.screenPos.w;
			screenCoord *= float2(16,9); //use aspect ratio
			
			//	clip(frac(IN.worldPos.y * .05) - 1);
				clip(frac((IN.worldPos.y + IN.worldPos.z) * 1) - dist / _FadeDistance); //>= 1 is visible, <= 0 is invisible
				clip(frac((IN.worldPos.x + IN.worldPos.z) * 1) - dist / _FadeDistance);
			//	clip((screenCoord.x * _CutSize) - dist);
			
			
			o.Albedo = tex2D (_MainTex, IN.uv_MainTex).rgb;
			o.Normal = UnpackNormal (tex2D (_BumpMap, IN.uv_BumpMap));
		}
		ENDCG
	}
	Fallback "Diffuse"
}
