// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:35015,y:32634,varname:node_4795,prsc:2|emission-3898-OUT,alpha-5866-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32614,y:32600,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-580-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:33623,y:33008,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:6524,x:31832,y:32371,varname:node_6524,prsc:2,uv:0;n:type:ShaderForge.SFN_Time,id:2775,x:31501,y:32936,varname:node_2775,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9165,x:32079,y:32487,varname:node_9165,prsc:2|A-6524-UVOUT,B-3796-OUT;n:type:ShaderForge.SFN_Add,id:580,x:32314,y:32590,varname:node_580,prsc:2|A-9165-OUT,B-5463-OUT;n:type:ShaderForge.SFN_Multiply,id:5463,x:32108,y:32663,varname:node_5463,prsc:2|A-4591-OUT,B-2775-T;n:type:ShaderForge.SFN_ValueProperty,id:880,x:34043,y:32837,ptovrint:False,ptlb:emissive,ptin:_emissive,varname:node_880,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:5110,x:31532,y:32455,ptovrint:False,ptlb:baseTexU,ptin:_baseTexU,varname:node_5110,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:9890,x:31532,y:32568,ptovrint:False,ptlb:baseTexV,ptin:_baseTexV,varname:node_9890,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:3796,x:31832,y:32539,varname:node_3796,prsc:2|A-5110-OUT,B-9890-OUT;n:type:ShaderForge.SFN_ValueProperty,id:258,x:31583,y:32703,ptovrint:False,ptlb:baseTexSpdX,ptin:_baseTexSpdX,varname:node_258,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:359,x:31572,y:32794,ptovrint:False,ptlb:baseTexSpdY,ptin:_baseTexSpdY,varname:node_359,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:4591,x:31832,y:32689,varname:node_4591,prsc:2|A-258-OUT,B-359-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3575,x:33362,y:32854,ptovrint:False,ptlb:baseTexDensity,ptin:_baseTexDensity,varname:node_3575,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Power,id:8758,x:33648,y:32824,varname:node_8758,prsc:2|VAL-6074-RGB,EXP-3575-OUT;n:type:ShaderForge.SFN_Multiply,id:3898,x:34481,y:32802,varname:node_3898,prsc:2|A-1354-OUT,B-880-OUT,C-2053-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:1354,x:34020,y:32638,ptovrint:False,ptlb:useTexColor,ptin:_useTexColor,varname:node_1354,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-9896-OUT,B-8758-OUT;n:type:ShaderForge.SFN_Multiply,id:5866,x:34580,y:33154,varname:node_5866,prsc:2|A-673-OUT,B-2053-A,C-746-OUT,D-599-OUT;n:type:ShaderForge.SFN_Power,id:1567,x:33594,y:33189,varname:node_1567,prsc:2|VAL-1576-OUT,EXP-9704-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9704,x:33327,y:33234,ptovrint:False,ptlb:alphaDensity,ptin:_alphaDensity,varname:node_9704,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Power,id:9896,x:33818,y:32608,varname:node_9896,prsc:2|VAL-2829-OUT,EXP-3575-OUT;n:type:ShaderForge.SFN_Clamp01,id:2829,x:33610,y:32486,varname:node_2829,prsc:2|IN-146-OUT;n:type:ShaderForge.SFN_Add,id:6878,x:33883,y:33321,varname:node_6878,prsc:2|A-2053-R,B-2053-G,C-2053-B;n:type:ShaderForge.SFN_Clamp01,id:746,x:34327,y:33282,varname:node_746,prsc:2|IN-3741-OUT;n:type:ShaderForge.SFN_Power,id:3741,x:34157,y:33328,varname:node_3741,prsc:2|VAL-6878-OUT,EXP-8595-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8595,x:33921,y:33505,ptovrint:False,ptlb:vertColorDensity,ptin:_vertColorDensity,varname:node_8595,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:8940,x:33883,y:33246,ptovrint:False,ptlb:alphaPower,ptin:_alphaPower,varname:node_8940,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:673,x:34100,y:33172,varname:node_673,prsc:2|A-1567-OUT,B-8940-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1576,x:33339,y:33049,ptovrint:False,ptlb:haveAlpha,ptin:_haveAlpha,varname:node_1576,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-5922-OUT,B-6074-A;n:type:ShaderForge.SFN_Multiply,id:8623,x:33262,y:32294,varname:node_8623,prsc:2|A-6074-R,B-6074-G,C-6074-B;n:type:ShaderForge.SFN_SwitchProperty,id:146,x:33459,y:32305,ptovrint:False,ptlb:simpleToon,ptin:_simpleToon,varname:node_146,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-5922-OUT,B-8623-OUT;n:type:ShaderForge.SFN_Fresnel,id:1060,x:33643,y:33719,varname:node_1060,prsc:2|EXP-3242-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3242,x:33400,y:33753,ptovrint:False,ptlb:fresnelPower,ptin:_fresnelPower,varname:node_3242,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_OneMinus,id:5236,x:33828,y:33781,varname:node_5236,prsc:2|IN-1060-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3095,x:34023,y:33748,ptovrint:False,ptlb:fresnelInv,ptin:_fresnelInv,varname:node_3095,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-1060-OUT,B-5236-OUT;n:type:ShaderForge.SFN_Vector1,id:631,x:34066,y:33665,varname:node_631,prsc:2,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:599,x:34293,y:33732,ptovrint:False,ptlb:fresnellOff,ptin:_fresnellOff,varname:node_599,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-3095-OUT,B-631-OUT;n:type:ShaderForge.SFN_Add,id:3232,x:33100,y:32526,varname:node_3232,prsc:2|A-4092-OUT,B-1712-OUT,C-198-OUT;n:type:ShaderForge.SFN_Divide,id:5922,x:33152,y:32780,varname:node_5922,prsc:2|A-3232-OUT,B-7902-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7902,x:32809,y:32878,ptovrint:False,ptlb:channelDivide,ptin:_channelDivide,varname:node_7902,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_SwitchProperty,id:4092,x:32870,y:32155,ptovrint:False,ptlb:notUseR,ptin:_notUseR,varname:node_4092,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6074-R,B-7877-OUT;n:type:ShaderForge.SFN_Vector1,id:7877,x:32598,y:32237,varname:node_7877,prsc:2,v1:0;n:type:ShaderForge.SFN_SwitchProperty,id:1712,x:32870,y:32294,ptovrint:False,ptlb:notUseG,ptin:_notUseG,varname:node_1712,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6074-G,B-7877-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:198,x:32857,y:32441,ptovrint:False,ptlb:notUseB,ptin:_notUseB,varname:node_198,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6074-B,B-7877-OUT;proporder:6074-880-5110-9890-258-359-3575-1354-9704-8595-8940-1576-146-3242-3095-599-7902-4092-1712-198;pass:END;sub:END;*/

Shader "KY/ab_two" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _emissive ("emissive", Float ) = 1
        _baseTexU ("baseTexU", Float ) = 1
        _baseTexV ("baseTexV", Float ) = 1
        _baseTexSpdX ("baseTexSpdX", Float ) = 0
        _baseTexSpdY ("baseTexSpdY", Float ) = 0
        _baseTexDensity ("baseTexDensity", Float ) = 1
        [MaterialToggle] _useTexColor ("useTexColor", Float ) = 0
        _alphaDensity ("alphaDensity", Float ) = 5
        _vertColorDensity ("vertColorDensity", Float ) = 1
        _alphaPower ("alphaPower", Float ) = 1
        [MaterialToggle] _haveAlpha ("haveAlpha", Float ) = 0
        [MaterialToggle] _simpleToon ("simpleToon", Float ) = 0
        _fresnelPower ("fresnelPower", Float ) = 1
        [MaterialToggle] _fresnelInv ("fresnelInv", Float ) = 0
        [MaterialToggle] _fresnellOff ("fresnellOff", Float ) = 1
        _channelDivide ("channelDivide", Float ) = 3
        [MaterialToggle] _notUseR ("notUseR", Float ) = 0
        [MaterialToggle] _notUseG ("notUseG", Float ) = 0
        [MaterialToggle] _notUseB ("notUseB", Float ) = 0
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
            uniform float _emissive;
            uniform float _baseTexU;
            uniform float _baseTexV;
            uniform float _baseTexSpdX;
            uniform float _baseTexSpdY;
            uniform float _baseTexDensity;
            uniform fixed _useTexColor;
            uniform float _alphaDensity;
            uniform float _vertColorDensity;
            uniform float _alphaPower;
            uniform fixed _haveAlpha;
            uniform fixed _simpleToon;
            uniform float _fresnelPower;
            uniform fixed _fresnelInv;
            uniform fixed _fresnellOff;
            uniform float _channelDivide;
            uniform fixed _notUseR;
            uniform fixed _notUseG;
            uniform fixed _notUseB;
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
                float4 node_2775 = _Time + _TimeEditor;
                float2 node_580 = ((i.uv0*float2(_baseTexU,_baseTexV))+(float2(_baseTexSpdX,_baseTexSpdY)*node_2775.g));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_580, _MainTex));
                float node_7877 = 0.0;
                float node_5922 = ((lerp( _MainTex_var.r, node_7877, _notUseR )+lerp( _MainTex_var.g, node_7877, _notUseG )+lerp( _MainTex_var.b, node_7877, _notUseB ))/_channelDivide);
                float3 emissive = (lerp( pow(saturate(lerp( node_5922, (_MainTex_var.r*_MainTex_var.g*_MainTex_var.b), _simpleToon )),_baseTexDensity), pow(_MainTex_var.rgb,_baseTexDensity), _useTexColor )*_emissive*i.vertexColor.rgb);
                float3 finalColor = emissive;
                float node_1060 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_fresnelPower);
                return fixed4(finalColor,((pow(lerp( node_5922, _MainTex_var.a, _haveAlpha ),_alphaDensity)*_alphaPower)*i.vertexColor.a*saturate(pow((i.vertexColor.r+i.vertexColor.g+i.vertexColor.b),_vertColorDensity))*lerp( lerp( node_1060, (1.0 - node_1060), _fresnelInv ), 1.0, _fresnellOff )));
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
