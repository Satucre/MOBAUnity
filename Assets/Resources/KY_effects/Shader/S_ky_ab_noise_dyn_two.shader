// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:34626,y:32738,varname:node_4795,prsc:2|emission-3898-OUT,alpha-5866-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32614,y:32600,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4689-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:33212,y:32990,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:6524,x:30645,y:32194,varname:node_6524,prsc:2,uv:0;n:type:ShaderForge.SFN_Time,id:2775,x:30314,y:32759,varname:node_2775,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:8025,x:31777,y:33004,ptovrint:False,ptlb:noseTex,ptin:_noseTex,varname:node_8025,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0b365c3f883d54bbf8994ed5f1b892b9,ntxv:0,isnm:False|UVIN-6405-OUT;n:type:ShaderForge.SFN_Multiply,id:9165,x:30892,y:32310,varname:node_9165,prsc:2|A-6524-UVOUT,B-3796-OUT;n:type:ShaderForge.SFN_Add,id:580,x:31127,y:32413,varname:node_580,prsc:2|A-9165-OUT,B-5463-OUT;n:type:ShaderForge.SFN_Multiply,id:5463,x:30921,y:32486,varname:node_5463,prsc:2|A-4591-OUT,B-2775-T;n:type:ShaderForge.SFN_TexCoord,id:5701,x:31163,y:32870,varname:node_5701,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:3273,x:31427,y:32967,varname:node_3273,prsc:2|A-5701-UVOUT,B-8089-OUT;n:type:ShaderForge.SFN_Add,id:6405,x:31594,y:33004,varname:node_6405,prsc:2|A-3273-OUT,B-8317-OUT;n:type:ShaderForge.SFN_Multiply,id:8317,x:31416,y:33203,varname:node_8317,prsc:2|A-2775-T,B-5979-OUT;n:type:ShaderForge.SFN_Power,id:9282,x:31976,y:33057,varname:node_9282,prsc:2|VAL-8025-R,EXP-3205-OUT;n:type:ShaderForge.SFN_Multiply,id:8785,x:32136,y:33068,varname:node_8785,prsc:2|A-9282-OUT,B-7346-OUT;n:type:ShaderForge.SFN_Add,id:4689,x:32432,y:32750,varname:node_4689,prsc:2|A-9306-UVOUT,B-8785-OUT;n:type:ShaderForge.SFN_ValueProperty,id:880,x:33632,y:32819,ptovrint:False,ptlb:emissive,ptin:_emissive,varname:node_880,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:5110,x:30345,y:32278,ptovrint:False,ptlb:baseTexU,ptin:_baseTexU,varname:node_5110,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:9890,x:30345,y:32391,ptovrint:False,ptlb:baseTexV,ptin:_baseTexV,varname:node_9890,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:3796,x:30645,y:32362,varname:node_3796,prsc:2|A-5110-OUT,B-9890-OUT;n:type:ShaderForge.SFN_ValueProperty,id:258,x:30396,y:32526,ptovrint:False,ptlb:baseTexSpdX,ptin:_baseTexSpdX,varname:node_258,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:359,x:30385,y:32617,ptovrint:False,ptlb:baseTexSpdY,ptin:_baseTexSpdY,varname:node_359,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:4591,x:30645,y:32512,varname:node_4591,prsc:2|A-258-OUT,B-359-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1681,x:30858,y:33054,ptovrint:False,ptlb:noiseTexU,ptin:_noiseTexU,varname:node_1681,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:5978,x:30813,y:33154,ptovrint:False,ptlb:noiseTexV,ptin:_noiseTexV,varname:node_5978,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:8089,x:31229,y:33027,varname:node_8089,prsc:2|A-1681-OUT,B-5978-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7934,x:30923,y:33251,ptovrint:False,ptlb:noiseTexSpdX,ptin:_noiseTexSpdX,varname:node_7934,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:3800,x:30923,y:33370,ptovrint:False,ptlb:noiseTexSpdY,ptin:_noiseTexSpdY,varname:node_3800,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:5979,x:31164,y:33364,varname:node_5979,prsc:2|A-7934-OUT,B-3800-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3205,x:31727,y:33273,ptovrint:False,ptlb:noiseDensity,ptin:_noiseDensity,varname:node_3205,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:7346,x:31870,y:33335,ptovrint:False,ptlb:noisePower,ptin:_noisePower,varname:node_7346,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_ValueProperty,id:3575,x:32951,y:32836,ptovrint:False,ptlb:baseTexDensity,ptin:_baseTexDensity,varname:node_3575,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Power,id:8758,x:33237,y:32806,varname:node_8758,prsc:2|VAL-6074-RGB,EXP-3575-OUT;n:type:ShaderForge.SFN_Multiply,id:3898,x:34303,y:32758,varname:node_3898,prsc:2|A-1354-OUT,B-880-OUT,C-2053-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:1354,x:33609,y:32620,ptovrint:False,ptlb:useTexColor,ptin:_useTexColor,varname:node_1354,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-9896-OUT,B-8758-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2719,x:31305,y:32413,varname:node_2719,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-580-OUT;n:type:ShaderForge.SFN_Append,id:9847,x:32072,y:32398,varname:node_9847,prsc:2|A-2719-R,B-3222-OUT;n:type:ShaderForge.SFN_OneMinus,id:5639,x:31509,y:32473,varname:node_5639,prsc:2|IN-2719-G;n:type:ShaderForge.SFN_Power,id:3222,x:31856,y:32549,varname:node_3222,prsc:2|VAL-7853-OUT,EXP-9217-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9217,x:31615,y:32729,ptovrint:False,ptlb:UVcompY,ptin:_UVcompY,varname:node_9217,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:7853,x:31668,y:32549,ptovrint:False,ptlb:compYInv,ptin:_compYInv,varname:node_7853,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2719-G,B-5639-OUT;n:type:ShaderForge.SFN_Multiply,id:5866,x:34169,y:33136,varname:node_5866,prsc:2|A-673-OUT,B-7961-OUT,C-746-OUT,D-3976-OUT;n:type:ShaderForge.SFN_Power,id:1567,x:33183,y:33171,varname:node_1567,prsc:2|VAL-1576-OUT,EXP-9704-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9704,x:32916,y:33216,ptovrint:False,ptlb:alphaDensity,ptin:_alphaDensity,varname:node_9704,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Add,id:1076,x:32898,y:32495,varname:node_1076,prsc:2|A-6074-R,B-6074-G,C-6074-B;n:type:ShaderForge.SFN_Power,id:9896,x:33338,y:32563,varname:node_9896,prsc:2|VAL-2829-OUT,EXP-3575-OUT;n:type:ShaderForge.SFN_Clamp01,id:2829,x:33109,y:32495,varname:node_2829,prsc:2|IN-5472-OUT;n:type:ShaderForge.SFN_Add,id:6878,x:33543,y:33269,varname:node_6878,prsc:2|A-2053-R,B-2053-G,C-2053-B;n:type:ShaderForge.SFN_Clamp01,id:746,x:33939,y:33236,varname:node_746,prsc:2|IN-3741-OUT;n:type:ShaderForge.SFN_Power,id:3741,x:33788,y:33299,varname:node_3741,prsc:2|VAL-6878-OUT,EXP-8595-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8595,x:33543,y:33457,ptovrint:False,ptlb:vertColorDensity,ptin:_vertColorDensity,varname:node_8595,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:8940,x:33183,y:33335,ptovrint:False,ptlb:alphaPower,ptin:_alphaPower,varname:node_8940,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:673,x:33745,y:33011,varname:node_673,prsc:2|A-1567-OUT,B-8940-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1576,x:32928,y:33031,ptovrint:False,ptlb:haveAlpha,ptin:_haveAlpha,varname:node_1576,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-391-OUT,B-6074-A;n:type:ShaderForge.SFN_Multiply,id:391,x:32710,y:33018,varname:node_391,prsc:2|A-6074-R,B-6074-G,C-6074-B;n:type:ShaderForge.SFN_Multiply,id:498,x:32822,y:32321,varname:node_498,prsc:2|A-6074-R,B-6074-G,C-6074-B;n:type:ShaderForge.SFN_SwitchProperty,id:5472,x:33109,y:32335,ptovrint:False,ptlb:simpleToon,ptin:_simpleToon,varname:node_5472,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-1076-OUT,B-498-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3976,x:33881,y:33528,ptovrint:False,ptlb:fresnelOff,ptin:_fresnelOff,varname:node_3976,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-7539-OUT,B-2026-OUT;n:type:ShaderForge.SFN_Vector1,id:2026,x:33628,y:33674,varname:node_2026,prsc:2,v1:1;n:type:ShaderForge.SFN_Fresnel,id:3491,x:33282,y:33543,varname:node_3491,prsc:2|EXP-5169-OUT;n:type:ShaderForge.SFN_OneMinus,id:955,x:33480,y:33603,varname:node_955,prsc:2|IN-3491-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7539,x:33670,y:33545,ptovrint:False,ptlb:fresInv,ptin:_fresInv,varname:node_7539,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3491-OUT,B-955-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5169,x:33052,y:33560,ptovrint:False,ptlb:fresPower,ptin:_fresPower,varname:node_5169,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Rotator,id:9306,x:32215,y:32700,varname:node_9306,prsc:2|UVIN-9847-OUT,ANG-1925-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1925,x:31991,y:32705,ptovrint:False,ptlb:baseTexRot,ptin:_baseTexRot,varname:node_1925,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Tex2d,id:3125,x:33733,y:33853,ptovrint:False,ptlb:maskTex,ptin:_maskTex,varname:node_3125,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:00d1dc61304fe4183bb5dae9ee4dd842,ntxv:0,isnm:False|UVIN-2973-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2756,x:33715,y:34061,ptovrint:False,ptlb:texMaskDensity,ptin:_texMaskDensity,varname:node_2756,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Power,id:7961,x:34013,y:33827,varname:node_7961,prsc:2|VAL-3125-R,EXP-2756-OUT;n:type:ShaderForge.SFN_TexCoord,id:195,x:33216,y:33806,varname:node_195,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:2973,x:33480,y:33816,varname:node_2973,prsc:2|A-195-UVOUT,B-347-OUT;n:type:ShaderForge.SFN_Vector1,id:4928,x:33100,y:34036,varname:node_4928,prsc:2,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:5829,x:33008,y:34208,ptovrint:False,ptlb:dynCorrect,ptin:_dynCorrect,varname:node_5829,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:4803,x:33236,y:34131,varname:node_4803,prsc:2|A-2053-A,B-5829-OUT;n:type:ShaderForge.SFN_Append,id:347,x:33412,y:34059,varname:node_347,prsc:2|A-4928-OUT,B-5934-OUT;n:type:ShaderForge.SFN_Add,id:5934,x:33236,y:34260,varname:node_5934,prsc:2|A-2053-A,B-5829-OUT;proporder:6074-8025-880-5110-9890-258-359-1681-5978-7934-3800-3205-7346-3575-1354-9217-7853-9704-8595-8940-1576-5472-3976-7539-5169-1925-3125-2756-5829;pass:END;sub:END;*/

Shader "KY/ab_noise_dyn_two" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _noseTex ("noseTex", 2D) = "white" {}
        _emissive ("emissive", Float ) = 1
        _baseTexU ("baseTexU", Float ) = 1
        _baseTexV ("baseTexV", Float ) = 1
        _baseTexSpdX ("baseTexSpdX", Float ) = 0
        _baseTexSpdY ("baseTexSpdY", Float ) = 0
        _noiseTexU ("noiseTexU", Float ) = 1
        _noiseTexV ("noiseTexV", Float ) = 1
        _noiseTexSpdX ("noiseTexSpdX", Float ) = 0
        _noiseTexSpdY ("noiseTexSpdY", Float ) = 0
        _noiseDensity ("noiseDensity", Float ) = 1
        _noisePower ("noisePower", Float ) = 0.2
        _baseTexDensity ("baseTexDensity", Float ) = 1
        [MaterialToggle] _useTexColor ("useTexColor", Float ) = 0
        _UVcompY ("UVcompY", Float ) = 1
        [MaterialToggle] _compYInv ("compYInv", Float ) = 0
        _alphaDensity ("alphaDensity", Float ) = 5
        _vertColorDensity ("vertColorDensity", Float ) = 1
        _alphaPower ("alphaPower", Float ) = 1
        [MaterialToggle] _haveAlpha ("haveAlpha", Float ) = 0
        [MaterialToggle] _simpleToon ("simpleToon", Float ) = 0
        [MaterialToggle] _fresnelOff ("fresnelOff", Float ) = 1
        [MaterialToggle] _fresInv ("fresInv", Float ) = 0
        _fresPower ("fresPower", Float ) = 1
        _baseTexRot ("baseTexRot", Float ) = 0
        _maskTex ("maskTex", 2D) = "white" {}
        _texMaskDensity ("texMaskDensity", Float ) = 1
        _dynCorrect ("dynCorrect", Float ) = 1
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
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _noseTex; uniform float4 _noseTex_ST;
            uniform float _emissive;
            uniform float _baseTexU;
            uniform float _baseTexV;
            uniform float _baseTexSpdX;
            uniform float _baseTexSpdY;
            uniform float _noiseTexU;
            uniform float _noiseTexV;
            uniform float _noiseTexSpdX;
            uniform float _noiseTexSpdY;
            uniform float _noiseDensity;
            uniform float _noisePower;
            uniform float _baseTexDensity;
            uniform fixed _useTexColor;
            uniform float _UVcompY;
            uniform fixed _compYInv;
            uniform float _alphaDensity;
            uniform float _vertColorDensity;
            uniform float _alphaPower;
            uniform fixed _haveAlpha;
            uniform fixed _simpleToon;
            uniform fixed _fresnelOff;
            uniform fixed _fresInv;
            uniform float _fresPower;
            uniform float _baseTexRot;
            uniform sampler2D _maskTex; uniform float4 _maskTex_ST;
            uniform float _texMaskDensity;
            uniform float _dynCorrect;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float node_9306_ang = _baseTexRot;
                float node_9306_spd = 1.0;
                float node_9306_cos = cos(node_9306_spd*node_9306_ang);
                float node_9306_sin = sin(node_9306_spd*node_9306_ang);
                float2 node_9306_piv = float2(0.5,0.5);
                float4 node_2775 = _Time + _TimeEditor;
                float2 node_2719 = ((i.uv0*float2(_baseTexU,_baseTexV))+(float2(_baseTexSpdX,_baseTexSpdY)*node_2775.g)).rg;
                float2 node_9306 = (mul(float2(node_2719.r,pow(lerp( node_2719.g, (1.0 - node_2719.g), _compYInv ),_UVcompY))-node_9306_piv,float2x2( node_9306_cos, -node_9306_sin, node_9306_sin, node_9306_cos))+node_9306_piv);
                float2 node_6405 = ((i.uv0*float2(_noiseTexU,_noiseTexV))+(node_2775.g*float2(_noiseTexSpdX,_noiseTexSpdY)));
                float4 _noseTex_var = tex2D(_noseTex,TRANSFORM_TEX(node_6405, _noseTex));
                float2 node_4689 = (node_9306+(pow(_noseTex_var.r,_noiseDensity)*_noisePower));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_4689, _MainTex));
                float3 emissive = (lerp( pow(saturate(lerp( (_MainTex_var.r+_MainTex_var.g+_MainTex_var.b), (_MainTex_var.r*_MainTex_var.g*_MainTex_var.b), _simpleToon )),_baseTexDensity), pow(_MainTex_var.rgb,_baseTexDensity), _useTexColor )*_emissive*i.vertexColor.rgb);
                float3 finalColor = emissive;
                float2 node_2973 = (i.uv0+float2(0.0,(i.vertexColor.a+_dynCorrect)));
                float4 _maskTex_var = tex2D(_maskTex,TRANSFORM_TEX(node_2973, _maskTex));
                float node_3491 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_fresPower);
                return fixed4(finalColor,((pow(lerp( (_MainTex_var.r*_MainTex_var.g*_MainTex_var.b), _MainTex_var.a, _haveAlpha ),_alphaDensity)*_alphaPower)*pow(_maskTex_var.r,_texMaskDensity)*saturate(pow((i.vertexColor.r+i.vertexColor.g+i.vertexColor.b),_vertColorDensity))*lerp( lerp( node_3491, (1.0 - node_3491), _fresInv ), 1.0, _fresnelOff )));
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
