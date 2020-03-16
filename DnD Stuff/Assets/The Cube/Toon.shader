// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Toon"
{
	Properties
	{
		_ASEOutlineColor( "Outline Color", Color ) = (0,0,0,0)
		_ASEOutlineWidth( "Outline Width", Float ) = 0
		[HDR]_BaseColor("Base Color", Color) = (1,1,1,0)
		_ShadowColor("Shadow Color", Color) = (0.5283019,0.5283019,0.5283019,0)
		_MainTexture("Main Texture", 2D) = "white" {}
		_NormalTexture("Normal Texture", 2D) = "white" {}
		_SepecularColor("Sepecular Color", Color) = (1,1,1,0)
		_specularSize("specularSize", Range( 0 , 1)) = 0.02
		_specularSharpness("specularSharpness", Float) = 0.5
		_rimScale("rimScale", Float) = 1
		_rimPower("rimPower", Float) = 5
		_RimColor("Rim Color", Color) = (1,1,1,0)
		_DarkShadowColor("DarkShadow Color", Color) = (1,1,1,0)
		[Toggle(_USELIGHTS_ON)] _UseLights("Use Lights", Float) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ }
		Cull Front
		CGPROGRAM
		#pragma target 3.0
		#pragma surface outlineSurf Outline nofog  keepalpha noshadow noambient novertexlights nolightmap nodynlightmap nodirlightmap nometa noforwardadd vertex:outlineVertexDataFunc 
		uniform half4 _ASEOutlineColor;
		uniform half _ASEOutlineWidth;
		void outlineVertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			v.vertex.xyz += ( v.normal * _ASEOutlineWidth );
		}
		inline half4 LightingOutline( SurfaceOutput s, half3 lightDir, half atten ) { return half4 ( 0,0,0, s.Alpha); }
		void outlineSurf( Input i, inout SurfaceOutput o )
		{
			o.Emission = _ASEOutlineColor.rgb;
			o.Alpha = 1;
		}
		ENDCG
		

		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" }
		Cull Off
		CGINCLUDE
		#include "UnityPBSLighting.cginc"
		#include "UnityCG.cginc"
		#include "UnityShaderVariables.cginc"
		#include "Lighting.cginc"
		#pragma target 3.0
		#pragma shader_feature_local _USELIGHTS_ON
		#ifdef UNITY_PASS_SHADOWCASTER
			#undef INTERNAL_DATA
			#undef WorldReflectionVector
			#undef WorldNormalVector
			#define INTERNAL_DATA half3 internalSurfaceTtoW0; half3 internalSurfaceTtoW1; half3 internalSurfaceTtoW2;
			#define WorldReflectionVector(data,normal) reflect (data.worldRefl, half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal)))
			#define WorldNormalVector(data,normal) half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal))
		#endif
		struct Input
		{
			float3 worldPos;
			float3 worldNormal;
			INTERNAL_DATA
			float2 uv_texcoord;
		};

		struct SurfaceOutputCustomLightingCustom
		{
			half3 Albedo;
			half3 Normal;
			half3 Emission;
			half Metallic;
			half Smoothness;
			half Occlusion;
			half Alpha;
			Input SurfInput;
			UnityGIInput GIData;
		};

		uniform float _rimScale;
		uniform float _rimPower;
		uniform sampler2D _NormalTexture;
		uniform float4 _NormalTexture_ST;
		uniform float4 _RimColor;
		uniform float4 _SepecularColor;
		uniform float _specularSharpness;
		uniform float _specularSize;
		uniform float4 _DarkShadowColor;
		uniform float4 _ShadowColor;
		uniform float4 _BaseColor;
		uniform sampler2D _MainTexture;
		uniform float4 _MainTexture_ST;

		inline half4 LightingStandardCustomLighting( inout SurfaceOutputCustomLightingCustom s, half3 viewDir, UnityGI gi )
		{
			UnityGIInput data = s.GIData;
			Input i = s.SurfInput;
			half4 c = 0;
			#ifdef UNITY_PASS_FORWARDBASE
			float ase_lightAtten = data.atten;
			if( _LightColor0.a == 0)
			ase_lightAtten = 0;
			#else
			float3 ase_lightAttenRGB = gi.light.color / ( ( _LightColor0.rgb ) + 0.000001 );
			float ase_lightAtten = max( max( ase_lightAttenRGB.r, ase_lightAttenRGB.g ), ase_lightAttenRGB.b );
			#endif
			#if defined(HANDLE_SHADOWS_BLENDING_IN_GI)
			half bakedAtten = UnitySampleBakedOcclusion(data.lightmapUV.xy, data.worldPos);
			float zDist = dot(_WorldSpaceCameraPos - data.worldPos, UNITY_MATRIX_V[2].xyz);
			float fadeDist = UnityComputeShadowFadeDistance(data.worldPos, zDist);
			ase_lightAtten = UnityMixRealtimeAndBakedShadows(data.atten, bakedAtten, UnityComputeShadowFade(fadeDist));
			#endif
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = normalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float fresnelNdotV91 = dot( ase_worldNormal, ase_worldViewDir );
			float fresnelNode91 = ( 0.0 + _rimScale * pow( 1.0 - fresnelNdotV91, _rimPower ) );
			float smoothstepResult102 = smoothstep( 0.0 , 1.0 , fresnelNode91);
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = normalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float2 uv_NormalTexture = i.uv_texcoord * _NormalTexture_ST.xy + _NormalTexture_ST.zw;
			float4 normalTexture65 = tex2D( _NormalTexture, uv_NormalTexture );
			float3 ase_vertexNormal = mul( unity_WorldToObject, float4( ase_worldNormal, 0 ) );
			float3 lerpResult62 = lerp( (WorldNormalVector( i , normalTexture65.rgb )) , ase_vertexNormal , float3( 0.5,0.5,0.5 ));
			float3 normalVector34 = lerpResult62;
			float dotResult16 = dot( ase_worldlightDir , normalVector34 );
			float dotResult108 = dot( _WorldSpaceLightPos0.xyz , normalVector34 );
			float lightatten141 = ( ase_lightAtten * saturate( dotResult108 ) );
			float temp_output_20_0 = min( dotResult16 , lightatten141 );
			float smoothstepResult19 = smoothstep( 0.0 , 0.01 , temp_output_20_0);
			float ShadowMask22 = saturate( smoothstepResult19 );
			float4 fresnelRim95 = ( min( smoothstepResult102 , ShadowMask22 ) * _RimColor );
			float3 normalizeResult33 = normalize( ( ase_worldViewDir + ase_worldlightDir ) );
			float dotResult36 = dot( normalVector34 , normalizeResult33 );
			float smoothstepResult38 = smoothstep( ( 1.0 - _specularSize ) , 1.0 , dotResult36);
			float smoothstepResult39 = smoothstep( 0.0 , _specularSharpness , smoothstepResult38);
			float specularMask40 = min( ShadowMask22 , smoothstepResult39 );
			float4 darkShadow214 = saturate( ( _DarkShadowColor + ( 1.0 - min( ( 1.0 - ShadowMask22 ) , smoothstepResult102 ) ) ) );
			float4 shadowColor9 = _ShadowColor;
			float4 baseColor7 = _BaseColor;
			float4 lerpResult5 = lerp( ( shadowColor9 * baseColor7 ) , baseColor7 , ShadowMask22);
			float4 temp_output_224_0 = ( darkShadow214 * lerpResult5 );
			float2 uv_MainTexture = i.uv_texcoord * _MainTexture_ST.xy + _MainTexture_ST.zw;
			float4 mainTex83 = tex2D( _MainTexture, uv_MainTexture );
			float smoothstepResult202 = smoothstep( 0.0 , 0.0 , lightatten141);
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float4 ifLocalVar192 = 0;
			if( _WorldSpaceLightPos0.w == 1.0 )
				ifLocalVar192 = ( mainTex83 * float4( ( smoothstepResult202 * ase_lightColor.rgb ) , 0.0 ) );
			else if( _WorldSpaceLightPos0.w < 1.0 )
				ifLocalVar192 = mainTex83;
			#ifdef _USELIGHTS_ON
				float4 staticSwitch229 = ifLocalVar192;
			#else
				float4 staticSwitch229 = mainTex83;
			#endif
			float4 lightColors117 = staticSwitch229;
			c.rgb = ( fresnelRim95 + ( ( _SepecularColor * specularMask40 ) + ( temp_output_224_0 * saturate( lightColors117 ) ) ) ).rgb;
			c.a = 1;
			return c;
		}

		inline void LightingStandardCustomLighting_GI( inout SurfaceOutputCustomLightingCustom s, UnityGIInput data, inout UnityGI gi )
		{
			s.GIData = data;
		}

		void surf( Input i , inout SurfaceOutputCustomLightingCustom o )
		{
			o.SurfInput = i;
			o.Normal = float3(0,0,1);
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf StandardCustomLighting keepalpha fullforwardshadows exclude_path:deferred 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 3.0
			#pragma multi_compile_shadowcaster
			#pragma multi_compile UNITY_PASS_SHADOWCASTER
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#include "HLSLSupport.cginc"
			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float2 customPack1 : TEXCOORD1;
				float4 tSpace0 : TEXCOORD2;
				float4 tSpace1 : TEXCOORD3;
				float4 tSpace2 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			v2f vert( appdata_full v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_OUTPUT( v2f, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				Input customInputData;
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				half3 worldNormal = UnityObjectToWorldNormal( v.normal );
				half3 worldTangent = UnityObjectToWorldDir( v.tangent.xyz );
				half tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				half3 worldBinormal = cross( worldNormal, worldTangent ) * tangentSign;
				o.tSpace0 = float4( worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x );
				o.tSpace1 = float4( worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y );
				o.tSpace2 = float4( worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z );
				o.customPack1.xy = customInputData.uv_texcoord;
				o.customPack1.xy = v.texcoord;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				return o;
			}
			half4 frag( v2f IN
			#if !defined( CAN_SKIP_VPOS )
			, UNITY_VPOS_TYPE vpos : VPOS
			#endif
			) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				Input surfIN;
				UNITY_INITIALIZE_OUTPUT( Input, surfIN );
				surfIN.uv_texcoord = IN.customPack1.xy;
				float3 worldPos = float3( IN.tSpace0.w, IN.tSpace1.w, IN.tSpace2.w );
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.worldPos = worldPos;
				surfIN.worldNormal = float3( IN.tSpace0.z, IN.tSpace1.z, IN.tSpace2.z );
				surfIN.internalSurfaceTtoW0 = IN.tSpace0.xyz;
				surfIN.internalSurfaceTtoW1 = IN.tSpace1.xyz;
				surfIN.internalSurfaceTtoW2 = IN.tSpace2.xyz;
				SurfaceOutputCustomLightingCustom o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputCustomLightingCustom, o )
				surf( surfIN, o );
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=17800
457;543;1215;581;-1957.214;1071.207;1.21466;True;False
Node;AmplifyShaderEditor.CommentaryNode;156;-5557.862,-884.2349;Inherit;False;637.1699;280;Comment;2;15;65;Normal Texture;1,1,1,1;0;0
Node;AmplifyShaderEditor.SamplerNode;15;-5507.862,-834.2349;Inherit;True;Property;_NormalTexture;Normal Texture;3;0;Create;True;0;0;False;0;-1;None;9a4a55d8d2e54394d97426434477cdcf;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;65;-5144.692,-813.1406;Inherit;False;normalTexture;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;157;-4937.665,-493.4785;Inherit;False;983.9521;530.3439;Comment;4;62;55;17;34;Normal Vector;1,1,1,1;0;0
Node;AmplifyShaderEditor.WorldNormalVector;17;-4886.017,-443.4785;Inherit;True;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalVertexDataNode;55;-4887.665,-188.1346;Inherit;True;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;62;-4498.786,-235.6333;Inherit;True;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0.5,0.5,0.5;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;34;-4177.713,-208.0778;Inherit;False;normalVector;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;151;1402.234,-1408.362;Inherit;False;1296.837;854.9838;Comment;7;106;110;108;109;115;114;141;Light Atten;1,1,1,1;0;0
Node;AmplifyShaderEditor.WorldSpaceLightPos;106;1422.923,-920.7888;Inherit;False;0;3;FLOAT4;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.GetLocalVarNode;231;1409.091,-593.3322;Inherit;False;34;normalVector;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;108;1690.693,-841.3561;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;109;1842.358,-817.1031;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;114;1461.413,-1198.173;Inherit;True;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;115;2072.01,-1025.32;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;158;-3622.193,-239.0719;Inherit;False;1547.049;488.6559;Comment;8;16;142;18;58;20;19;21;22;Shadow Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;18;-3572.193,-189.0719;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;58;-3532.456,-13.53637;Inherit;False;34;normalVector;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;141;2399.796,-928.3015;Inherit;False;lightatten;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;142;-3260.822,133.584;Inherit;False;141;lightatten;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;16;-3301.499,-165.9824;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMinOpNode;20;-2984.137,-135.8563;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;19;-2714.777,-148.7187;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;21;-2444.167,-136.1748;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;150;-756.024,-1100.587;Inherit;False;1993.625;606.0121;Comment;10;90;98;99;93;91;92;101;100;95;102;Rim Light;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;22;-2299.144,-146.2806;Inherit;False;ShadowMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;98;-701.024,-865.0718;Inherit;False;Property;_rimScale;rimScale;8;0;Create;True;0;0;False;0;1;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;153;-2297.241,-1104.537;Inherit;False;655.7729;281.0015;Comment;2;83;14;Texture;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;99;-706.024,-764.0718;Inherit;False;Property;_rimPower;rimPower;9;0;Create;True;0;0;False;0;5;5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;159;-3313.07,352.4186;Inherit;False;2106.542;570.8962;Comment;14;86;33;35;88;36;87;38;44;39;43;40;30;31;32;Spec Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;30;-3258.305,573.6438;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SamplerNode;14;-2247.241,-1053.536;Inherit;True;Property;_MainTexture;Main Texture;2;0;Create;True;0;0;False;0;-1;None;b297077dae62c1944ba14cad801cddf5;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;211;-869.7865,-1467.23;Inherit;False;22;ShadowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;31;-3263.07,740.3149;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.FresnelNode;91;-477.219,-961.165;Inherit;True;Standard;WorldNormal;ViewDir;False;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;209;-651.9883,-1477.872;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;102;-153.0995,-779.8611;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;202;2806.441,-826.9953;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;83;-1865.469,-1054.537;Inherit;False;mainTex;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LightColorNode;111;2770.989,-500.3267;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleAddOpNode;32;-2977.809,668.2407;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;112;3048.334,-622.7195;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;155;-2944.402,-1061.212;Inherit;False;576.082;482.1862;Comment;4;1;7;3;9;Base Colors;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;35;-2869.621,531.5881;Inherit;False;34;normalVector;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;194;3107.032,-294.0112;Inherit;True;83;mainTex;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMinOpNode;210;-400.2899,-1489.537;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;86;-2724.03,434.7688;Inherit;False;Property;_specularSize;specularSize;6;0;Create;True;0;0;False;0;0.02;0.02;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;33;-2800.743,675.1657;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;195;3337.493,-556.4305;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.DotProductOpNode;36;-2569.389,612.6674;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldSpaceLightPos;190;3299.964,-773.9009;Inherit;False;0;3;FLOAT4;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.OneMinusNode;226;-99.85696,-1385.108;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1;-2894.402,-1011.13;Inherit;False;Property;_BaseColor;Base Color;0;1;[HDR];Create;True;0;0;False;0;1,1,1,0;0.740566,1,0.9566485,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;212;-83.5251,-1688.093;Inherit;False;Property;_DarkShadowColor;DarkShadow Color;11;0;Create;True;0;0;False;0;1,1,1,0;0.509434,0.509434,0.509434,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;3;-2890.063,-791.0253;Inherit;False;Property;_ShadowColor;Shadow Color;1;0;Create;True;0;0;False;0;0.5283019,0.5283019,0.5283019,0;0.875445,0.9508297,0.9716981,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;193;3401.137,-651.8665;Inherit;False;Constant;_Float0;Float 0;11;0;Create;True;0;0;False;0;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;88;-2418.801,473.887;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7;-2608.111,-1011.212;Inherit;False;baseColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;227;95.13754,-1464.289;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;192;3617.774,-548.4545;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SmoothstepOpNode;38;-2294.664,586.77;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0.98;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;87;-2195.203,466.7871;Inherit;False;Property;_specularSharpness;specularSharpness;7;0;Create;True;0;0;False;0;0.5;5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9;-2592.32,-788.6053;Inherit;False;shadowColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SmoothstepOpNode;39;-1984.285,592.3596;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;8;-869.8143,3.862749;Inherit;True;7;baseColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;44;-1938.336,402.4186;Inherit;False;22;ShadowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;228;339.5376,-1472.088;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;10;-870.0924,-309.8754;Inherit;True;9;shadowColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch;229;3774.626,-353.2637;Inherit;False;Property;_UseLights;Use Lights;12;0;Create;True;0;0;False;0;0;0;1;True;;Toggle;2;Key0;Key1;Create;True;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;117;4009.357,-466.1283;Inherit;True;lightColors;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMinOpNode;43;-1693.242,552.2101;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;93;171.7989,-678.2816;Inherit;False;22;ShadowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;214;537.6724,-1450.244;Inherit;False;darkShadow;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;29;-392.1768,150.0499;Inherit;False;22;ShadowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;4;-500.6897,-287.4412;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;40;-1430.527,546.063;Inherit;False;specularMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMinOpNode;92;491.0988,-761.9904;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;5;-176.481,-12.49153;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;197;126.5679,112.1239;Inherit;True;117;lightColors;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;101;561.5093,-1050.587;Inherit;False;Property;_RimColor;Rim Color;10;0;Create;True;0;0;False;0;1,1,1,0;0.5188679,0.5188679,0.5188679,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;217;-292.0774,-405.9587;Inherit;False;214;darkShadow;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;208;389.5779,107.6476;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;49;419.6483,-465.6603;Inherit;False;Property;_SepecularColor;Sepecular Color;4;0;Create;True;0;0;False;0;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;224;76.63522,-324.1453;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;100;803.3094,-806.1871;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;42;428.6086,-260.7271;Inherit;False;40;specularMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;95;1013.601,-830.7545;Inherit;False;fresnelRim;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;47;710.6579,-424.0247;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;196;558.5193,4.575791;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;96;1382.053,-231.8386;Inherit;False;95;fresnelRim;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;154;-1646.22,-1159.557;Inherit;False;681.3962;299.8662;Comment;3;51;52;53;Texture Color;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleAddOpNode;41;977.4885,-98.40955;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;90;-704.5704,-980.7134;Inherit;False;34;normalVector;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SmoothstepOpNode;80;153.4513,848.0825;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0.5;False;2;FLOAT;0.51;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;171;1106.566,487.7525;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;69;913.2703,892.6888;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ObjectToWorldMatrixNode;223;-5477.396,-498.5173;Inherit;False;0;1;FLOAT4x4;0
Node;AmplifyShaderEditor.NormalVertexDataNode;64;-546.8399,962.2053;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;73;531.5383,913.2303;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;230;-4790.938,66.58437;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;63;-4196.263,-1009.289;Inherit;True;34;normalVector;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;168;1233.17,189.6214;Inherit;True;51;textureColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;199;2785.771,-1244.678;Inherit;True;121;shadowMaskSoft;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;177;1903.266,278.0299;Inherit;False;2;0;COLOR;0,0,0,0;False;1;COLOR;1,1,1,1;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;52;-1395.716,-994.6909;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;173;1833.038,608.1138;Inherit;True;141;lightatten;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;170;1084.906,383.7999;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;82;356.4287,1026.445;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;51;-1188.824,-991.5237;Inherit;False;textureColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WorldToTangentMatrix;221;-5438.966,-283.2151;Inherit;False;0;1;FLOAT3x3;0
Node;AmplifyShaderEditor.GetLocalVarNode;53;-1596.22,-1109.557;Inherit;False;7;baseColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;172;1287.476,470.7447;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;67;-237.2367,1008.057;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;97;1581.643,-143.3558;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;74;688.7692,930.3229;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;176;1699.828,252.071;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;169;1598.212,507.4299;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;66;-538.5991,1173.414;Inherit;False;34;normalVector;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;77;85.23553,1037.507;Inherit;False;Property;_normalIntensity;normalIntensity;5;0;Create;True;0;0;False;0;0.1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;200;3156.205,-1188.588;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;121;-2731.532,-456.0164;Inherit;False;shadowMaskSoft;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;207;367.8562,-52.75613;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;222;-5194.565,-367.7149;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3x3;0,0,0,1,1,1,1,0,1;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;75;335.6632,899.4551;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;110;1452.898,-765.7851;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;2013.444,-361.567;Float;False;True;-1;2;ASEMaterialInspector;0;0;CustomLighting;Toon;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Off;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;ForwardOnly;14;all;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;True;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;65;0;15;0
WireConnection;17;0;65;0
WireConnection;62;0;17;0
WireConnection;62;1;55;0
WireConnection;34;0;62;0
WireConnection;108;0;106;1
WireConnection;108;1;231;0
WireConnection;109;0;108;0
WireConnection;115;0;114;0
WireConnection;115;1;109;0
WireConnection;141;0;115;0
WireConnection;16;0;18;0
WireConnection;16;1;58;0
WireConnection;20;0;16;0
WireConnection;20;1;142;0
WireConnection;19;0;20;0
WireConnection;21;0;19;0
WireConnection;22;0;21;0
WireConnection;91;2;98;0
WireConnection;91;3;99;0
WireConnection;209;0;211;0
WireConnection;102;0;91;0
WireConnection;202;0;141;0
WireConnection;83;0;14;0
WireConnection;32;0;30;0
WireConnection;32;1;31;0
WireConnection;112;0;202;0
WireConnection;112;1;111;1
WireConnection;210;0;209;0
WireConnection;210;1;102;0
WireConnection;33;0;32;0
WireConnection;195;0;194;0
WireConnection;195;1;112;0
WireConnection;36;0;35;0
WireConnection;36;1;33;0
WireConnection;226;0;210;0
WireConnection;88;0;86;0
WireConnection;7;0;1;0
WireConnection;227;0;212;0
WireConnection;227;1;226;0
WireConnection;192;0;190;2
WireConnection;192;1;193;0
WireConnection;192;3;195;0
WireConnection;192;4;194;0
WireConnection;38;0;36;0
WireConnection;38;1;88;0
WireConnection;9;0;3;0
WireConnection;39;0;38;0
WireConnection;39;2;87;0
WireConnection;228;0;227;0
WireConnection;229;1;194;0
WireConnection;229;0;192;0
WireConnection;117;0;229;0
WireConnection;43;0;44;0
WireConnection;43;1;39;0
WireConnection;214;0;228;0
WireConnection;4;0;10;0
WireConnection;4;1;8;0
WireConnection;40;0;43;0
WireConnection;92;0;102;0
WireConnection;92;1;93;0
WireConnection;5;0;4;0
WireConnection;5;1;8;0
WireConnection;5;2;29;0
WireConnection;208;0;197;0
WireConnection;224;0;217;0
WireConnection;224;1;5;0
WireConnection;100;0;92;0
WireConnection;100;1;101;0
WireConnection;95;0;100;0
WireConnection;47;0;49;0
WireConnection;47;1;42;0
WireConnection;196;0;224;0
WireConnection;196;1;208;0
WireConnection;41;0;47;0
WireConnection;41;1;196;0
WireConnection;80;0;67;0
WireConnection;69;1;74;0
WireConnection;73;0;75;0
WireConnection;73;1;82;0
WireConnection;177;0;176;0
WireConnection;52;0;53;0
WireConnection;52;1;83;0
WireConnection;82;0;77;0
WireConnection;51;0;52;0
WireConnection;172;0;170;0
WireConnection;172;1;171;1
WireConnection;67;0;64;0
WireConnection;67;1;66;0
WireConnection;97;0;96;0
WireConnection;97;1;41;0
WireConnection;74;0;73;0
WireConnection;176;0;168;0
WireConnection;176;1;169;0
WireConnection;169;0;168;0
WireConnection;169;1;172;0
WireConnection;200;0;199;0
WireConnection;121;0;20;0
WireConnection;207;0;224;0
WireConnection;222;0;65;0
WireConnection;222;1;221;0
WireConnection;75;0;80;0
WireConnection;0;13;97;0
ASEEND*/
//CHKSM=F8A867240F5A6B718FCA1E8FF81FBC654C1D7846