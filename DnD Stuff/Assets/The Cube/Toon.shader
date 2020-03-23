// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Toon"
{
	Properties
	{
		_ASEOutlineWidth( "Outline Width", Float ) = 0
		_ASEOutlineColor( "Outline Color", Color ) = (0.6886792,0.6886792,0.6886792,0)
		[HDR]_BaseColor("Base Color", Color) = (1,1,1,0)
		_ShadowColor("Shadow Color", Color) = (0.5283019,0.5283019,0.5283019,0)
		_MainTexture("Main Texture", 2D) = "white" {}
		_TextureIntensity("Texture Intensity", Range( 0 , 1)) = 1
		_NormalTexture("Normal Texture", 2D) = "bump" {}
		_SepecularColor("Sepecular Color", Color) = (1,1,1,0)
		_specularSize("specularSize", Range( 0 , 1)) = 0.02
		_specularSharpness("specularSharpness", Float) = 0.5
		_rimScale("rimScale", Float) = 1
		_rimPower("rimPower", Float) = 5
		_RimColor("Rim Color", Color) = (1,1,1,0)
		_DarkShadowColor("DarkShadow Color", Color) = (1,1,1,0)
		[Toggle(_USELIGHTS_ON)] _UseLights("Use Lights", Float) = 0
		_LightSharpness("Light Sharpness", Range( 0 , 1)) = 0
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

		uniform sampler2D _NormalTexture;
		uniform float4 _NormalTexture_ST;
		uniform float _rimScale;
		uniform float _rimPower;
		uniform float4 _RimColor;
		uniform float4 _SepecularColor;
		uniform float _specularSharpness;
		uniform float _specularSize;
		uniform float4 _DarkShadowColor;
		uniform float4 _ShadowColor;
		uniform float4 _BaseColor;
		uniform sampler2D _MainTexture;
		uniform float4 _MainTexture_ST;
		uniform float _TextureIntensity;
		uniform float _LightSharpness;

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
			float2 uv_NormalTexture = i.uv_texcoord * _NormalTexture_ST.xy + _NormalTexture_ST.zw;
			float3 normalTexture65 = UnpackNormal( tex2D( _NormalTexture, uv_NormalTexture ) );
			float3 normalVector34 = (WorldNormalVector( i , normalTexture65 ));
			float fresnelNdotV91 = dot( normalVector34, ase_worldViewDir );
			float fresnelNode91 = ( 0.0 + _rimScale * pow( 1.0 - fresnelNdotV91, _rimPower ) );
			float smoothstepResult102 = smoothstep( 0.0 , 1.0 , fresnelNode91);
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = normalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult16 = dot( ase_worldlightDir , normalVector34 );
			float3 temp_output_260_0 = ( _WorldSpaceLightPos0.xyz - ase_worldPos );
			float ifLocalVar264 = 0;
			if( _WorldSpaceLightPos0.w > 0.0 )
				ifLocalVar264 = saturate( length( temp_output_260_0 ) );
			else if( _WorldSpaceLightPos0.w == 0.0 )
				ifLocalVar264 = 1.0;
			float3 ifLocalVar258 = 0;
			if( _WorldSpaceLightPos0.w > 0.0 )
				ifLocalVar258 = temp_output_260_0;
			else if( _WorldSpaceLightPos0.w == 0.0 )
				ifLocalVar258 = _WorldSpaceLightPos0.xyz;
			float dotResult108 = dot( ifLocalVar258 , normalVector34 );
			float temp_output_115_0 = ( ase_lightAtten * saturate( ( ifLocalVar264 * dotResult108 ) ) );
			float lightatten141 = temp_output_115_0;
			float shadowMaskSoft121 = ( dotResult16 * lightatten141 );
			float smoothstepResult19 = smoothstep( 0.0 , 0.0 , shadowMaskSoft121);
			float ShadowMask22 = smoothstepResult19;
			float4 temp_output_100_0 = ( min( smoothstepResult102 , ShadowMask22 ) * _RimColor );
			float4 fresnelRim95 = temp_output_100_0;
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
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
			float4 color235 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float2 uv_MainTexture = i.uv_texcoord * _MainTexture_ST.xy + _MainTexture_ST.zw;
			float4 mainTex83 = tex2D( _MainTexture, uv_MainTexture );
			float4 lerpResult234 = lerp( color235 , mainTex83 , _TextureIntensity);
			float smoothstepResult202 = smoothstep( 0.0 , _LightSharpness , lightatten141);
			float4 ifLocalVar192 = 0;
			if( _WorldSpaceLightPos0.w == 1.0 )
				ifLocalVar192 = ( lerpResult234 * float4( ( smoothstepResult202 * ase_lightColor.rgb ) , 0.0 ) );
			else if( _WorldSpaceLightPos0.w < 1.0 )
				ifLocalVar192 = lerpResult234;
			#ifdef _USELIGHTS_ON
				float4 staticSwitch229 = ifLocalVar192;
			#else
				float4 staticSwitch229 = lerpResult234;
			#endif
			float4 lightColors117 = staticSwitch229;
			c.rgb = ( fresnelRim95 + ( ( float4( ase_lightColor.rgb , 0.0 ) * ( _SepecularColor * specularMask40 ) ) + ( temp_output_224_0 * lightColors117 ) ) ).rgb;
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
244;530;1215;529;-1987.307;1065.217;1.270149;True;False
Node;AmplifyShaderEditor.CommentaryNode;156;-5557.862,-884.2349;Inherit;False;637.1699;280;Comment;2;15;65;Normal Texture;1,1,1,1;0;0
Node;AmplifyShaderEditor.SamplerNode;15;-5507.862,-834.2349;Inherit;True;Property;_NormalTexture;Normal Texture;5;0;Create;True;0;0;False;0;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;157;-4905.129,-544.8509;Inherit;False;983.9521;530.3439;Comment;4;62;17;34;230;Normal Vector;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;65;-5144.692,-813.1406;Inherit;False;normalTexture;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldSpaceLightPos;106;621.1932,-1253.951;Inherit;False;0;3;FLOAT4;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.WorldPosInputsNode;259;737.041,-1021.94;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldNormalVector;17;-4838.023,-507.4995;Inherit;True;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleSubtractOpNode;260;933.2808,-1032.615;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;34;-4185.479,-447.95;Inherit;False;normalVector;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LengthOpNode;266;1050.105,-935.1688;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;151;1402.234,-1408.362;Inherit;False;1296.837;854.9838;Comment;9;110;108;109;115;114;141;258;263;269;Light Atten;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;265;1127.046,-792.2799;Inherit;False;Constant;_1;1;15;0;Create;True;0;0;False;0;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;231;1129.061,-615.7742;Inherit;False;34;normalVector;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;267;1199.101,-930.2828;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;258;1333,-1211.967;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;108;1549.996,-825.7587;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;264;1349.908,-972.8438;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;263;1674.9,-1038.735;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;109;1889.114,-812.135;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;114;1648.415,-1332.875;Inherit;True;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;158;-3622.193,-239.0719;Inherit;False;1547.049;488.6559;Comment;8;16;142;18;58;19;21;22;249;Shadow Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;115;2081.611,-1050.92;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;18;-3565.817,-185.883;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;58;-3526.08,-10.34751;Inherit;False;34;normalVector;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;141;2494.308,-1032.232;Inherit;False;lightatten;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;16;-3295.123,-162.7935;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;142;-3380.617,99.53305;Inherit;False;141;lightatten;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;249;-3001.486,-72.15358;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;121;-2919.082,-387.8169;Inherit;False;shadowMaskSoft;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;19;-2714.777,-148.7187;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;150;-1612.484,-1083.876;Inherit;False;1993.625;606.0121;Comment;10;90;98;99;93;91;92;101;100;102;262;Rim Light;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;159;-3313.07,352.4186;Inherit;False;2106.542;570.8962;Comment;14;86;33;35;88;36;87;38;44;39;43;40;30;31;32;Spec Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;31;-3263.07,740.3149;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;90;-1553.387,-964.002;Inherit;False;34;normalVector;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;153;-2450.768,-1098.296;Inherit;False;655.7729;281.0015;Comment;2;83;14;Texture;1,1,1,1;0;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;30;-3258.305,573.6438;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;22;-2284.794,-144.6862;Inherit;False;ShadowMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;99;-1562.484,-747.3604;Inherit;False;Property;_rimPower;rimPower;11;0;Create;True;0;0;False;0;5;5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;98;-1557.484,-848.3604;Inherit;False;Property;_rimScale;rimScale;10;0;Create;True;0;0;False;0;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;91;-1333.679,-944.4536;Inherit;True;Standard;WorldNormal;ViewDir;False;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;32;-2977.809,668.2407;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;211;-869.7865,-1467.23;Inherit;False;22;ShadowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;14;-2400.768,-1047.295;Inherit;True;Property;_MainTexture;Main Texture;2;0;Create;True;0;0;False;0;-1;None;b297077dae62c1944ba14cad801cddf5;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.OneMinusNode;209;-651.9883,-1477.872;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;102;-1009.559,-763.1497;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;33;-2800.743,675.1657;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;272;2670.647,-788.324;Inherit;False;Property;_LightSharpness;Light Sharpness;15;0;Create;True;0;0;False;0;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;35;-2869.621,531.5881;Inherit;False;34;normalVector;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;83;-2018.994,-1048.296;Inherit;False;mainTex;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;86;-2724.03,434.7688;Inherit;False;Property;_specularSize;specularSize;8;0;Create;True;0;0;False;0;0.02;0.01;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;235;2478.198,-336.448;Inherit;False;Constant;_Color0;Color 0;14;0;Create;True;0;0;False;0;1,1,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;155;-2944.402,-1061.212;Inherit;False;576.082;482.1862;Comment;4;1;7;3;9;Base Colors;1,1,1,1;0;0
Node;AmplifyShaderEditor.LightColorNode;111;2751.259,-564.2112;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;232;2456.001,85.29031;Inherit;False;Property;_TextureIntensity;Texture Intensity;3;0;Create;True;0;0;False;0;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;36;-2569.389,612.6674;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMinOpNode;210;-400.2899,-1489.537;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;88;-2418.801,473.887;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;194;2494.74,-154.6941;Inherit;True;83;mainTex;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SmoothstepOpNode;202;2887.362,-886.4316;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;3;-2890.063,-791.0253;Inherit;False;Property;_ShadowColor;Shadow Color;1;0;Create;True;0;0;False;0;0.5283019,0.5283019,0.5283019,0;0.6527234,0.7015593,0.7169812,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;112;3045.493,-608.5129;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;234;2861.366,-277.3226;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;212;-83.5251,-1688.093;Inherit;False;Property;_DarkShadowColor;DarkShadow Color;13;0;Create;True;0;0;False;0;1,1,1,0;0.509434,0.509434,0.509434,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.OneMinusNode;226;-99.85696,-1385.108;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1;-2894.402,-1011.13;Inherit;False;Property;_BaseColor;Base Color;0;1;[HDR];Create;True;0;0;False;0;1,1,1,0;0.740566,1,0.9566485,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SmoothstepOpNode;38;-2294.664,586.77;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0.98;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;87;-2195.203,466.7871;Inherit;False;Property;_specularSharpness;specularSharpness;9;0;Create;True;0;0;False;0;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;44;-1938.336,402.4186;Inherit;False;22;ShadowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7;-2608.111,-1011.212;Inherit;False;baseColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;195;3337.493,-556.4305;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;193;3401.137,-651.8665;Inherit;False;Constant;_Float0;Float 0;11;0;Create;True;0;0;False;0;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;227;95.13754,-1464.289;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;9;-2592.32,-788.6053;Inherit;False;shadowColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WorldSpaceLightPos;190;3299.964,-773.9009;Inherit;False;0;3;FLOAT4;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.SmoothstepOpNode;39;-1984.285,592.3596;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMinOpNode;43;-1693.242,552.2101;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;228;339.5376,-1472.088;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;10;-870.0924,-309.8754;Inherit;True;9;shadowColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;8;-869.8143,3.862749;Inherit;True;7;baseColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;192;3617.774,-548.4545;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;214;537.6724,-1450.244;Inherit;False;darkShadow;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch;229;3856.848,-362.7222;Inherit;False;Property;_UseLights;Use Lights;14;0;Create;True;0;0;False;0;0;0;1;True;;Toggle;2;Key0;Key1;Create;True;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;40;-1430.527,546.063;Inherit;False;specularMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;93;-684.6608,-661.5702;Inherit;False;22;ShadowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;29;-392.1768,150.0499;Inherit;False;22;ShadowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;4;-517.2826,-264.8144;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;49;419.6483,-465.6603;Inherit;False;Property;_SepecularColor;Sepecular Color;7;0;Create;True;0;0;False;0;1,1,1,0;0.4528302,0.4528302,0.4528302,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;217;-292.0774,-405.9587;Inherit;False;214;darkShadow;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;101;-294.9505,-1033.876;Inherit;False;Property;_RimColor;Rim Color;12;0;Create;True;0;0;False;0;1,1,1,0;0.4433962,0.4433962,0.4433962,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMinOpNode;92;-365.361,-745.279;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;5;-176.481,-12.49153;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;117;4170.927,-453.3027;Inherit;True;lightColors;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;42;428.6086,-260.7271;Inherit;False;40;specularMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;271;872.0849,-557.8784;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;224;76.63522,-324.1453;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;197;107.5541,59.22009;Inherit;True;117;lightColors;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;100;-53.15035,-789.4756;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;47;710.6579,-424.0247;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;270;992.8303,-414.5984;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;196;595.2997,-114.6643;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;95;402.8393,-798.1917;Inherit;False;fresnelRim;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;41;977.4885,-98.40955;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;154;-1963.737,-1560.184;Inherit;False;681.3962;299.8662;Comment;3;51;52;53;Texture Color;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;96;1382.053,-231.8386;Inherit;False;95;fresnelRim;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LightColorNode;261;-7.369122,-978.9444;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;222;-5194.565,-367.7149;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3x3;0,0,0,1,1,1,1,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;74;688.7692,930.3229;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;200;3156.205,-1188.588;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;67;-237.2367,1008.057;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;173;1833.038,608.1138;Inherit;True;141;lightatten;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;176;1699.828,252.071;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;169;1598.212,507.4299;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;241;3226.542,475.2911;Inherit;True;Property;unity_Lightmap1;unity_Lightmap;4;1;[HideInInspector];Create;False;0;0;False;0;-1;None;None;True;1;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexCoordVertexDataNode;244;2433.921,389.2445;Inherit;False;1;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SaturateNode;207;339.9349,-107.1295;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;21;-2444.167,-136.1748;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;63;-4196.263,-1009.289;Inherit;True;34;normalVector;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SmoothstepOpNode;80;153.4513,848.0825;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0.5;False;2;FLOAT;0.51;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;75;335.6632,899.4551;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;82;356.4287,1026.445;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;239;2736.657,631.499;Inherit;False;False;False;True;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector4Node;243;2432.771,569.8422;Float;False;Global;unity_LightmapST;unity_LightmapST;4;0;Create;True;0;0;False;0;0,0,0,0;1,1,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;245;2734.72,542.8445;Inherit;False;True;True;False;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DecodeLightmapHlpNode;242;3577.074,479.3668;Inherit;False;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;77;85.23553,1037.507;Inherit;False;Property;_normalIntensity;normalIntensity;6;0;Create;True;0;0;False;0;0.1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;97;1581.643,-143.3558;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;52;-1713.233,-1395.318;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LightAttenuation;170;1084.906,383.7999;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;110;2311.747,-731.8868;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;247;4084.921,559.9452;Inherit;False;lightMap;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;172;1287.476,470.7447;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ObjectToWorldMatrixNode;223;-5477.396,-498.5173;Inherit;False;0;1;FLOAT4x4;0
Node;AmplifyShaderEditor.SimpleAddOpNode;73;531.5383,913.2303;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;64;-546.8399,962.2053;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;254;-119.3232,284.5547;Inherit;False;83;mainTex;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;208;371.0043,153.9344;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;177;1903.266,278.0299;Inherit;False;2;0;COLOR;0,0,0,0;False;1;COLOR;1,1,1,1;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;168;1233.17,189.6214;Inherit;True;51;textureColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.NormalVertexDataNode;55;-4930.463,94.42435;Inherit;True;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;69;913.2703,892.6888;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;262;165.4121,-711.0543;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.DynamicAppendNode;246;3876.313,501.5122;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;252;1749.034,-246.1936;Inherit;False;117;lightColors;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;236;3174.609,-176.2495;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;240;2987.009,500.8138;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;1,0;False;2;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;248;1705.02,108.0278;Inherit;False;247;lightMap;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WorldNormalVector;230;-4809.183,-198.2667;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;53;-1913.737,-1510.185;Inherit;False;7;baseColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;62;-4477.364,-237.2414;Inherit;True;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0.5,0.5,0.5;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;51;-1506.341,-1392.151;Inherit;False;textureColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LightColorNode;171;1106.566,487.7525;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.GetLocalVarNode;66;-538.5991,1173.414;Inherit;False;34;normalVector;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DitheringNode;269;2291.674,-1107.445;Inherit;False;0;False;3;0;FLOAT;0;False;1;SAMPLER2D;;False;2;FLOAT4;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;199;2785.771,-1244.678;Inherit;True;121;shadowMaskSoft;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldToTangentMatrix;221;-5438.966,-283.2151;Inherit;False;0;1;FLOAT3x3;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;2013.444,-361.567;Float;False;True;-1;2;ASEMaterialInspector;0;0;CustomLighting;Toon;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Off;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;ForwardOnly;14;all;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;True;0;0.6886792,0.6886792,0.6886792,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;65;0;15;0
WireConnection;17;0;65;0
WireConnection;260;0;106;1
WireConnection;260;1;259;0
WireConnection;34;0;17;0
WireConnection;266;0;260;0
WireConnection;267;0;266;0
WireConnection;258;0;106;2
WireConnection;258;2;260;0
WireConnection;258;3;106;1
WireConnection;108;0;258;0
WireConnection;108;1;231;0
WireConnection;264;0;106;2
WireConnection;264;2;267;0
WireConnection;264;3;265;0
WireConnection;263;0;264;0
WireConnection;263;1;108;0
WireConnection;109;0;263;0
WireConnection;115;0;114;0
WireConnection;115;1;109;0
WireConnection;141;0;115;0
WireConnection;16;0;18;0
WireConnection;16;1;58;0
WireConnection;249;0;16;0
WireConnection;249;1;142;0
WireConnection;121;0;249;0
WireConnection;19;0;121;0
WireConnection;22;0;19;0
WireConnection;91;0;90;0
WireConnection;91;2;98;0
WireConnection;91;3;99;0
WireConnection;32;0;30;0
WireConnection;32;1;31;0
WireConnection;209;0;211;0
WireConnection;102;0;91;0
WireConnection;33;0;32;0
WireConnection;83;0;14;0
WireConnection;36;0;35;0
WireConnection;36;1;33;0
WireConnection;210;0;209;0
WireConnection;210;1;102;0
WireConnection;88;0;86;0
WireConnection;202;0;141;0
WireConnection;202;2;272;0
WireConnection;112;0;202;0
WireConnection;112;1;111;1
WireConnection;234;0;235;0
WireConnection;234;1;194;0
WireConnection;234;2;232;0
WireConnection;226;0;210;0
WireConnection;38;0;36;0
WireConnection;38;1;88;0
WireConnection;7;0;1;0
WireConnection;195;0;234;0
WireConnection;195;1;112;0
WireConnection;227;0;212;0
WireConnection;227;1;226;0
WireConnection;9;0;3;0
WireConnection;39;0;38;0
WireConnection;39;2;87;0
WireConnection;43;0;44;0
WireConnection;43;1;39;0
WireConnection;228;0;227;0
WireConnection;192;0;190;2
WireConnection;192;1;193;0
WireConnection;192;3;195;0
WireConnection;192;4;234;0
WireConnection;214;0;228;0
WireConnection;229;1;234;0
WireConnection;229;0;192;0
WireConnection;40;0;43;0
WireConnection;4;0;10;0
WireConnection;4;1;8;0
WireConnection;92;0;102;0
WireConnection;92;1;93;0
WireConnection;5;0;4;0
WireConnection;5;1;8;0
WireConnection;5;2;29;0
WireConnection;117;0;229;0
WireConnection;224;0;217;0
WireConnection;224;1;5;0
WireConnection;100;0;92;0
WireConnection;100;1;101;0
WireConnection;47;0;49;0
WireConnection;47;1;42;0
WireConnection;270;0;271;1
WireConnection;270;1;47;0
WireConnection;196;0;224;0
WireConnection;196;1;197;0
WireConnection;95;0;100;0
WireConnection;41;0;270;0
WireConnection;41;1;196;0
WireConnection;222;0;65;0
WireConnection;222;1;221;0
WireConnection;74;0;73;0
WireConnection;200;0;199;0
WireConnection;67;0;64;0
WireConnection;67;1;66;0
WireConnection;176;0;168;0
WireConnection;176;1;169;0
WireConnection;169;0;168;0
WireConnection;169;1;172;0
WireConnection;241;1;240;0
WireConnection;207;0;224;0
WireConnection;21;0;19;0
WireConnection;80;0;67;0
WireConnection;75;0;80;0
WireConnection;82;0;77;0
WireConnection;239;0;243;0
WireConnection;245;0;243;0
WireConnection;242;0;241;0
WireConnection;97;0;96;0
WireConnection;97;1;41;0
WireConnection;52;0;53;0
WireConnection;52;1;83;0
WireConnection;247;0;246;0
WireConnection;172;0;170;0
WireConnection;172;1;171;1
WireConnection;73;0;75;0
WireConnection;73;1;82;0
WireConnection;208;0;197;0
WireConnection;177;0;176;0
WireConnection;69;1;74;0
WireConnection;262;0;261;1
WireConnection;262;1;100;0
WireConnection;246;0;242;0
WireConnection;236;0;234;0
WireConnection;240;0;244;0
WireConnection;240;1;245;0
WireConnection;240;2;239;0
WireConnection;62;0;230;0
WireConnection;62;1;222;0
WireConnection;51;0;52;0
WireConnection;269;0;115;0
WireConnection;0;13;97;0
ASEEND*/
//CHKSM=A05D4EB92C78828317FD45CBCE85F6FF84B7ED84