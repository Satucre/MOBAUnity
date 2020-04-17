// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:35068,y:32709,varname:node_4795,prsc:2|emission-3898-OUT,alpha-5866-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:34439,y:32969,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:6524,x:31832,y:32371,varname:node_6524,prsc:2,uv:0;n:type:ShaderForge.SFN_Time,id:2775,x:31832,y:32884,varname:node_2775,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9165,x:32079,y:32487,varname:node_9165,prsc:2|A-6524-UVOUT,B-3796-OUT;n:type:ShaderForge.SFN_Add,id:580,x:32314,y:32590,varname:node_580,prsc:2|A-9165-OUT,B-5463-OUT;n:type:ShaderForge.SFN_Multiply,id:5463,x:32108,y:32663,varname:node_5463,prsc:2|A-4591-OUT,B-2775-T;n:type:ShaderForge.SFN_ValueProperty,id:880,x:34369,y:32829,ptovrint:False,ptlb:emissive,ptin:_emissive,varname:node_880,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:5110,x:31532,y:32455,ptovrint:False,ptlb:baseTexU,ptin:_baseTexU,varname:node_5110,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:9890,x:31532,y:32568,ptovrint:False,ptlb:baseTexV,ptin:_baseTexV,varname:node_9890,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:3796,x:31832,y:32539,varname:node_3796,prsc:2|A-5110-OUT,B-9890-OUT;n:type:ShaderForge.SFN_ValueProperty,id:258,x:31583,y:32703,ptovrint:False,ptlb:baseTexSpdX,ptin:_baseTexSpdX,varname:node_258,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:359,x:31572,y:32794,ptovrint:False,ptlb:baseTexSpdY,ptin:_baseTexSpdY,varname:node_359,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:4591,x:31832,y:32689,varname:node_4591,prsc:2|A-258-OUT,B-359-OUT;n:type:ShaderForge.SFN_Multiply,id:3898,x:34641,y:32785,varname:node_3898,prsc:2|A-6111-RGB,B-880-OUT,C-2053-RGB;n:type:ShaderForge.SFN_Multiply,id:5866,x:34740,y:33137,varname:node_5866,prsc:2|A-673-OUT,B-2053-A,C-5856-OUT;n:type:ShaderForge.SFN_Power,id:1567,x:34084,y:33126,varname:node_1567,prsc:2|VAL-140-OUT,EXP-9704-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9704,x:33857,y:33203,ptovrint:False,ptlb:alphaDensity,ptin:_alphaDensity,varname:node_9704,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:8940,x:34217,y:33226,ptovrint:False,ptlb:alphaPower,ptin:_alphaPower,varname:node_8940,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:673,x:34439,y:33133,varname:node_673,prsc:2|A-1567-OUT,B-8940-OUT;n:type:ShaderForge.SFN_Tex2d,id:8946,x:32722,y:33077,ptovrint:False,ptlb:noiseTex,ptin:_noiseTex,varname:node_8946,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3322a533dc8434ee9a3f07e30a2992a9,ntxv:0,isnm:False|UVIN-3631-OUT;n:type:ShaderForge.SFN_Add,id:2091,x:33147,y:32804,varname:node_2091,prsc:2|A-580-OUT,B-8946-G;n:type:ShaderForge.SFN_Tex2d,id:6111,x:33483,y:32853,ptovrint:False,ptlb:baseTex,ptin:_baseTex,varname:node_6111,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f0e4c6ee6270543b19d980e2767acc40,ntxv:0,isnm:False|UVIN-2091-OUT;n:type:ShaderForge.SFN_Tex2d,id:5760,x:33497,y:33164,ptovrint:False,ptlb:maskTex,ptin:_maskTex,varname:node_5760,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:00d1dc61304fe4183bb5dae9ee4dd842,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:140,x:33764,y:33040,varname:node_140,prsc:2|A-6111-A,B-5760-R;n:type:ShaderForge.SFN_FragmentPosition,id:6312,x:31842,y:33199,varname:node_6312,prsc:2;n:type:ShaderForge.SFN_Append,id:2488,x:32058,y:33199,varname:node_2488,prsc:2|A-6312-X,B-6312-Y;n:type:ShaderForge.SFN_Divide,id:1165,x:32271,y:33209,varname:node_1165,prsc:2|A-2488-OUT,B-8462-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8462,x:32039,y:33397,ptovrint:False,ptlb:noiseTexUVcorrect,ptin:_noiseTexUVcorrect,varname:node_8462,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Panner,id:3570,x:32467,y:33077,varname:node_3570,prsc:2,spu:0.3,spv:-1|UVIN-1165-OUT;n:type:ShaderForge.SFN_Add,id:3631,x:32499,y:33274,varname:node_3631,prsc:2|A-1165-OUT,B-1065-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6478,x:32011,y:33489,ptovrint:False,ptlb:noiseSpdX,ptin:_noiseSpdX,varname:node_6478,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.3;n:type:ShaderForge.SFN_ValueProperty,id:4097,x:32001,y:33563,ptovrint:False,ptlb:noiseSpdY,ptin:_noiseSpdY,varname:node_4097,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-1;n:type:ShaderForge.SFN_Append,id:8823,x:32190,y:33506,varname:node_8823,prsc:2|A-6478-OUT,B-4097-OUT;n:type:ShaderForge.SFN_Multiply,id:1065,x:32343,y:33570,varname:node_1065,prsc:2|A-8823-OUT,B-6856-T;n:type:ShaderForge.SFN_Time,id:6856,x:31944,y:33683,varname:node_6856,prsc:2;n:type:ShaderForge.SFN_SwitchProperty,id:5856,x:34462,y:33472,ptovrint:False,ptlb:useDepthBlend,ptin:_useDepthBlend,varname:node_5856,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-1230-OUT,B-59-OUT;n:type:ShaderForge.SFN_Vector1,id:1230,x:34293,y:33399,varname:node_1230,prsc:2,v1:1;n:type:ShaderForge.SFN_DepthBlend,id:59,x:34026,y:33564,varname:node_59,prsc:2|DIST-8177-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8177,x:33844,y:33541,ptovrint:False,ptlb:depthBlend,ptin:_depthBlend,varname:node_8177,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;proporder:880-5110-9890-258-359-9704-8940-8946-6111-5760-8462-6478-4097-5856-8177;pass:END;sub:END;*/

Shader "KY/ab_smoke" {
    Properties {
        _emissive ("emissive", Float ) = 1
        _baseTexU ("baseTexU", Float ) = 1
        _baseTexV ("baseTexV", Float ) = 1
        _baseTexSpdX ("baseTexSpdX", Float ) = 0
        _baseTexSpdY ("baseTexSpdY", Float ) = 0
        _alphaDensity ("alphaDensity", Float ) = 1
        _alphaPower ("alphaPower", Float ) = 1
        _noiseTex ("noiseTex", 2D) = "white" {}
        _baseTex ("baseTex", 2D) = "white" {}
        _maskTex ("maskTex", 2D) = "white" {}
        _noiseTexUVcorrect ("noiseTexUVcorrect", Float ) = 5
        _noiseSpdX ("noiseSpdX", Float ) = 0.3
        _noiseSpdY ("noiseSpdY", Float ) = -1
        [MaterialToggle] _useDepthBlend ("useDepthBlend", Float ) = 0
        _depthBlend ("depthBlend", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float _emissive;
            uniform float _baseTexU;
            uniform float _baseTexV;
            uniform float _baseTexSpdX;
            uniform float _baseTexSpdY;
            uniform float _alphaDensity;
            uniform float _alphaPower;
            uniform sampler2D _noiseTex; uniform float4 _noiseTex_ST;
            uniform sampler2D _baseTex; uniform float4 _baseTex_ST;
            uniform sampler2D _maskTex; uniform float4 _maskTex_ST;
            uniform float _noiseTexUVcorrect;
            uniform float _noiseSpdX;
            uniform float _noiseSpdY;
            uniform fixed _useDepthBlend;
            uniform float _depthBlend;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
////// Emissive:
                float4 node_2775 = _Time + _TimeEditor;
                float2 node_1165 = (float2(i.posWorld.r,i.posWorld.g)/_noiseTexUVcorrect);
                float4 node_6856 = _Time + _TimeEditor;
                float2 node_3631 = (node_1165+(float2(_noiseSpdX,_noiseSpdY)*node_6856.g));
                float4 _noiseTex_var = tex2D(_noiseTex,TRANSFORM_TEX(node_3631, _noiseTex));
                float2 node_2091 = (((i.uv0*float2(_baseTexU,_baseTexV))+(float2(_baseTexSpdX,_baseTexSpdY)*node_2775.g))+_noiseTex_var.g);
                float4 _baseTex_var = tex2D(_baseTex,TRANSFORM_TEX(node_2091, _baseTex));
                float3 emissive = (_baseTex_var.rgb*_emissive*i.vertexColor.rgb);
                float3 finalColor = emissive;
                float4 _maskTex_var = tex2D(_maskTex,TRANSFORM_TEX(i.uv0, _maskTex));
                return fixed4(finalColor,((pow((_baseTex_var.a*_maskTex_var.r),_alphaDensity)*_alphaPower)*i.vertexColor.a*lerp( 1.0, saturate((sceneZ-partZ)/_depthBlend), _useDepthBlend )));
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
