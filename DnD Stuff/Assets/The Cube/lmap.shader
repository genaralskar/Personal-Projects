// Upgrade NOTE: commented out 'float4 unity_LightmapST', a built-in variable

// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "New AmplifyShader"
{
	Properties
	{
		_MainTex ("Sprite Texture", 2D) = "white" {}
		_Color ("Tint", Color) = (1,1,1,1)
		_LightmapPower("Lightmap Power", Range( 0 , 1)) = 1
		_LightmapColor("Lightmap Color", Color) = (0,0,0,0)
		[HideInInspector]_unity_Lightmap("unity_Lightmap", 2D) = "white" {}
	}
	
	SubShader
	{
		Tags { "RenderType"="Opaque" "LightMode"="ForwardBase" "QUEUE"="Geometry" }
		LOD 100
		Cull Off


		Pass
		{
			CGPROGRAM
			#pragma target 3.0 
			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"
			#include "UnityCG.cginc"


			struct appdata
			{
				float4 vertex : POSITION;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			
			struct v2f
			{
				float4 vertex : SV_POSITION;
				float4 texcoord : TEXCOORD0;
				UNITY_VERTEX_OUTPUT_STEREO
			};

			uniform sampler2D _MainTex;
			uniform fixed4 _Color;
			uniform float4 _LightmapColor;
			uniform sampler2D _unity_Lightmap;
			// uniform float4 unity_LightmapST;
			uniform float _LightmapPower;
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				o.texcoord.xy = v.texcoord.xy;
				o.texcoord.zw = v.texcoord1.xy;
				
				// ase common template code
				
				v.vertex.xyz +=  float3(0,0,0) ;
				o.vertex = UnityObjectToClipPos(v.vertex);
				return o;
			}
			
			fixed4 frag (v2f i ) : SV_Target
			{
				fixed4 myColorVar;
				// ase common template code
				float3 temp_output_18_0 = (_LightmapColor).rgb;
				float4 appendResult47 = (float4(temp_output_18_0 , (float)0));
				float4 _Vector0 = float4(1,1,1,1);
				float3 decodeLightMap1 = DecodeLightmap( tex2D( _unity_Lightmap, (i.texcoord.zw*(unity_LightmapST).xy + (unity_LightmapST).zw) ) );
				float4 appendResult44 = (float4(decodeLightMap1 , (float)0));
				float4 lerpResult45 = lerp( _Vector0 , appendResult44 , _LightmapPower);
				float4 lerpResult46 = lerp( appendResult47 , _Vector0 , lerpResult45.x);
				
				
				myColorVar = ( _Color * lerpResult46 );
				return myColorVar;
			}
			ENDCG
		}
	}
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=14302
103;56;1849;981;2900.548;-37.64441;1;True;True
Node;AmplifyShaderEditor.Vector4Node;54;-2441.467,571.8716;Float;False;Global;unity_LightmapST;unity_LightmapST;4;0;Create;True;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexCoordVertexDataNode;53;-2425.467,417.6719;Float;False;1;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;55;-2124.668,571.2717;Float;False;True;True;False;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ComponentMaskNode;56;-2126.267,681.6718;Float;False;False;False;True;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;57;-1825.068,419.2718;Float;False;3;0;FLOAT2;0.0;False;1;FLOAT2;1.0;False;2;FLOAT2;0.0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;2;-1585.534,393.7491;Float;True;Property;_unity_Lightmap;unity_Lightmap;3;1;[HideInInspector];Create;False;None;None;True;1;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0.0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1.0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.IntNode;50;-1130.435,529.7601;Float;False;Constant;_Int0;Int 0;5;0;Create;True;0;0;0;1;INT;0
Node;AmplifyShaderEditor.ColorNode;5;-1294.733,103.9267;Float;False;Property;_LightmapColor;Lightmap Color;1;0;Create;True;0,0,0,0;0,0,0,1;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DecodeLightmapHlpNode;1;-1235.002,397.8248;Float;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;7;-1088.705,667.424;Float;False;Property;_LightmapPower;Lightmap Power;0;0;Create;True;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;18;-990.1708,104.7899;Float;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;44;-925.127,394.3721;Float;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0.0;False;2;FLOAT;0.0;False;3;FLOAT;0.0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.Vector4Node;51;-961.0213,215.067;Float;False;Constant;_Vector0;Vector 0;5;0;Create;True;1,1,1,1;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;45;-563.1165,371.3738;Float;False;3;0;FLOAT4;1,1,1,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.DynamicAppendNode;47;-555.1353,261.3658;Float;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0.0;False;2;FLOAT;0.0;False;3;FLOAT;0.0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.TemplateShaderPropertyNode;52;-359.422,119.0672;Float;False;_Color;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;46;-358.1165,326.3738;Float;False;3;0;FLOAT4;1,1,1,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.OneMinusNode;16;-686.3174,-389.1567;Float;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ClampOpNode;9;-724.9593,-152.0471;Float;False;3;0;FLOAT3;0,0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;1,1,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;11;-245.9782,-223.622;Float;False;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;1,1,1,1;False;2;FLOAT;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;49;-109.4244,250.6509;Float;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;8;-521.4788,-175.887;Float;False;3;0;FLOAT3;1,1,1;False;1;FLOAT3;0,0,0,0;False;2;FLOAT;0.0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;19;-509.3694,-319.5975;Float;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0.0;False;2;FLOAT;0.0;False;3;FLOAT;0.0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleAddOpNode;10;-911.529,-153.7871;Float;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0.0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;6;-1486.209,609.366;Float;False;Property;_ShadowPower;Shadow Power;2;0;Create;True;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMasterNode;43;96.00001,262.4001;Float;False;True;2;Float;ASEMaterialInspector;0;2;New AmplifyShader;6e114a916ca3e4b4bb51972669d463bf;ASETemplateShaders/DefaultUnlit;Off;3;RenderType=Opaque;LightMode=ForwardBase;QUEUE=Geometry;2;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0,0,0;False;0
WireConnection;55;0;54;0
WireConnection;56;0;54;0
WireConnection;57;0;53;0
WireConnection;57;1;55;0
WireConnection;57;2;56;0
WireConnection;2;1;57;0
WireConnection;1;0;2;0
WireConnection;18;0;5;0
WireConnection;44;0;1;0
WireConnection;44;3;50;0
WireConnection;45;0;51;0
WireConnection;45;1;44;0
WireConnection;45;2;7;0
WireConnection;47;0;18;0
WireConnection;47;3;50;0
WireConnection;46;0;47;0
WireConnection;46;1;51;0
WireConnection;46;2;45;0
WireConnection;16;0;18;0
WireConnection;9;0;10;0
WireConnection;11;0;19;0
WireConnection;11;2;8;0
WireConnection;49;0;52;0
WireConnection;49;1;46;0
WireConnection;8;1;9;0
WireConnection;8;2;7;0
WireConnection;19;0;16;0
WireConnection;19;3;5;4
WireConnection;10;0;1;0
WireConnection;10;1;6;0
WireConnection;43;0;49;0
ASEEND*/
//CHKSM=B2F11AF1322E263E2815457B21717B8C62FF48F9