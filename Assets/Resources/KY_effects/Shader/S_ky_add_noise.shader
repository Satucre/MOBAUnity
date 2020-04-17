// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:33797,y:32712,varname:node_4795,prsc:2|emission-422-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32759,y:32668,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:10064cb3fc923428daf6f14bb6c54b07,ntxv:0,isnm:False|UVIN-4689-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32639,y:32912,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:6524,x:30645,y:32194,varname:node_6524,prsc:2,uv:0;n:type:ShaderForge.SFN_Time,id:2775,x:30314,y:32759,varname:node_2775,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:8025,x:31777,y:33004,ptovrint:False,ptlb:noseTex,ptin:_noseTex,varname:node_8025,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0b365c3f883d54bbf8994ed5f1b892b9,ntxv:0,isnm:False|UVIN-6405-OUT;n:type:ShaderForge.SFN_Multiply,id:9165,x:30892,y:32310,varname:node_9165,prsc:2|A-6524-UVOUT,B-3796-OUT;n:type:ShaderForge.SFN_Add,id:580,x:31127,y:32413,varname:node_580,prsc:2|A-9165-OUT,B-5463-OUT;n:type:ShaderForge.SFN_Multiply,id:5463,x:30921,y:32486,varname:node_5463,prsc:2|A-4591-OUT,B-2775-T;n:type:ShaderForge.SFN_TexCoord,id:5701,x:31163,y:32870,varname:node_5701,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:3273,x:31427,y:32967,varname:node_3273,prsc:2|A-5701-UVOUT,B-8089-OUT;n:type:ShaderForge.SFN_Add,id:6405,x:31594,y:33004,varname:node_6405,prsc:2|A-3273-OUT,B-8317-OUT;n:type:ShaderForge.SFN_Multiply,id:8317,x:31416,y:33203,varname:node_8317,prsc:2|A-2775-T,B-5979-OUT;n:type:ShaderForge.SFN_Power,id:9282,x:31976,y:33057,varname:node_9282,prsc:2|VAL-8025-R,EXP-3205-OUT;n:type:ShaderForge.SFN_Multiply,id:8785,x:32136,y:33068,varname:node_8785,prsc:2|A-9282-OUT,B-7346-OUT;n:type:ShaderForge.SFN_Add,id:4689,x:32432,y:32750,varname:node_4689,prsc:2|A-9847-OUT,B-8785-OUT;n:type:ShaderForge.SFN_ValueProperty,id:880,x:33184,y:32841,ptovrint:False,ptlb:texPower,ptin:_texPower,varname:node_880,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_ValueProperty,id:5110,x:30345,y:32278,ptovrint:False,ptlb:baseTexU,ptin:_baseTexU,varname:node_5110,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:9890,x:30345,y:32391,ptovrint:False,ptlb:baseTexV,ptin:_baseTexV,varname:node_9890,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:3796,x:30645,y:32362,varname:node_3796,prsc:2|A-5110-OUT,B-9890-OUT;n:type:ShaderForge.SFN_ValueProperty,id:258,x:30396,y:32526,ptovrint:False,ptlb:baseTexSpdX,ptin:_baseTexSpdX,varname:node_258,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:359,x:30385,y:32617,ptovrint:False,ptlb:baseTexSpdY,ptin:_baseTexSpdY,varname:node_359,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:4591,x:30645,y:32512,varname:node_4591,prsc:2|A-258-OUT,B-359-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1681,x:30858,y:33054,ptovrint:False,ptlb:noiseTexU,ptin:_noiseTexU,varname:node_1681,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:5978,x:30813,y:33154,ptovrint:False,ptlb:noiseTexV,ptin:_noiseTexV,varname:node_5978,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:8089,x:31229,y:33027,varname:node_8089,prsc:2|A-1681-OUT,B-5978-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7934,x:30923,y:33251,ptovrint:False,ptlb:noiseTexSpdX,ptin:_noiseTexSpdX,varname:node_7934,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:3800,x:30923,y:33370,ptovrint:False,ptlb:noiseTexSpdY,ptin:_noiseTexSpdY,varname:node_3800,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:5979,x:31164,y:33364,varname:node_5979,prsc:2|A-7934-OUT,B-3800-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3205,x:31727,y:33273,ptovrint:False,ptlb:noiseDensity,ptin:_noiseDensity,varname:node_3205,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:7346,x:31870,y:33335,ptovrint:False,ptlb:noisePower,ptin:_noisePower,varname:node_7346,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Power,id:5912,x:33155,y:32984,varname:node_5912,prsc:2|VAL-2053-RGB,EXP-2637-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2637,x:32919,y:33018,ptovrint:False,ptlb:vertAlphaDensity,ptin:_vertAlphaDensity,varname:node_2637,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:108,x:32992,y:32635,varname:node_108,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:7287,x:33162,y:32670,varname:node_7287,prsc:2|A-108-OUT,B-1354-OUT,T-8758-OUT;n:type:ShaderForge.SFN_Multiply,id:422,x:33521,y:32809,varname:node_422,prsc:2|A-3898-OUT,B-5912-OUT,C-2053-A;n:type:ShaderForge.SFN_ValueProperty,id:3575,x:32767,y:32856,ptovrint:False,ptlb:baseTexDensity,ptin:_baseTexDensity,varname:node_3575,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Power,id:8758,x:32982,y:32763,varname:node_8758,prsc:2|VAL-6074-A,EXP-3575-OUT;n:type:ShaderForge.SFN_Multiply,id:3898,x:33350,y:32728,varname:node_3898,prsc:2|A-7287-OUT,B-880-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1354,x:32954,y:33103,ptovrint:False,ptlb:useTexColor,ptin:_useTexColor,varname:node_1354,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-2053-RGB,B-6074-RGB;n:type:ShaderForge.SFN_ComponentMask,id:2719,x:31305,y:32413,varname:node_2719,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-580-OUT;n:type:ShaderForge.SFN_Append,id:9847,x:32072,y:32398,varname:node_9847,prsc:2|A-2719-R,B-3222-OUT;n:type:ShaderForge.SFN_OneMinus,id:5639,x:31509,y:32473,varname:node_5639,prsc:2|IN-2719-G;n:type:ShaderForge.SFN_Power,id:3222,x:31856,y:32549,varname:node_3222,prsc:2|VAL-7853-OUT,EXP-9217-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9217,x:31615,y:32729,ptovrint:False,ptlb:UVcompY,ptin:_UVcompY,varname:node_9217,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:7853,x:31668,y:32549,ptovrint:False,ptlb:compYInv,ptin:_compYInv,varname:node_7853,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2719-G,B-5639-OUT;proporder:6074-8025-880-5110-9890-258-359-1681-5978-7934-3800-3205-7346-2637-3575-1354-9217-7853;pass:END;sub:END;*/

Shader "KY/add_noise" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _noseTex ("noseTex", 2D) = "white" {}
        _texPower ("texPower", Float ) = 2
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
        _vertAlphaDensity ("vertAlphaDensity", Float ) = 1
        _baseTexDensity ("baseTexDensity", Float ) = 2
        [MaterialToggle] _useTexColor ("useTexColor", Float ) = 0
        _UVcompY ("UVcompY", Float ) = 1
        [MaterialToggle] _compYInv ("compYInv", Float ) = 0
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
            Blend One One
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
            uniform float _texPower;
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
            uniform float _vertAlphaDensity;
            uniform float _baseTexDensity;
            uniform fixed _useTexColor;
            uniform float _UVcompY;
            uniform fixed _compYInv;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float node_108 = 0.0;
                float4 node_2775 = _Time + _TimeEditor;
                float2 node_2719 = ((i.uv0*float2(_baseTexU,_baseTexV))+(float2(_baseTexSpdX,_baseTexSpdY)*node_2775.g)).rg;
                float2 node_6405 = ((i.uv0*float2(_noiseTexU,_noiseTexV))+(node_2775.g*float2(_noiseTexSpdX,_noiseTexSpdY)));
                float4 _noseTex_var = tex2D(_noseTex,TRANSFORM_TEX(node_6405, _noseTex));
                float2 node_4689 = (float2(node_2719.r,pow(lerp( node_2719.g, (1.0 - node_2719.g), _compYInv ),_UVcompY))+(pow(_noseTex_var.r,_noiseDensity)*_noisePower));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_4689, _MainTex));
                float3 emissive = ((lerp(float3(node_108,node_108,node_108),lerp( i.vertexColor.rgb, _MainTex_var.rgb, _useTexColor ),pow(_MainTex_var.a,_baseTexDensity))*_texPower)*pow(i.vertexColor.rgb,_vertAlphaDensity)*i.vertexColor.a);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
