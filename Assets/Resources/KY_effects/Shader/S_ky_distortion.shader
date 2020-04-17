// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|alpha-5125-OUT,refract-7491-OUT;n:type:ShaderForge.SFN_Vector1,id:5125,x:32386,y:32892,varname:node_5125,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:5489,x:31605,y:32968,ptovrint:False,ptlb:distTex,ptin:_distTex,varname:node_5489,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3322a533dc8434ee9a3f07e30a2992a9,ntxv:0,isnm:False|UVIN-5421-OUT;n:type:ShaderForge.SFN_Power,id:6814,x:32058,y:33140,varname:node_6814,prsc:2|VAL-8049-OUT,EXP-8671-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8671,x:31789,y:33241,ptovrint:False,ptlb:distTexDensity,ptin:_distTexDensity,varname:node_8671,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Lerp,id:2830,x:32329,y:33023,varname:node_2830,prsc:2|A-118-OUT,B-8781-OUT,T-6814-OUT;n:type:ShaderForge.SFN_TexCoord,id:9748,x:30885,y:32553,varname:node_9748,prsc:2,uv:0;n:type:ShaderForge.SFN_Append,id:8049,x:31819,y:33067,varname:node_8049,prsc:2|A-5489-R,B-5489-G;n:type:ShaderForge.SFN_ValueProperty,id:4528,x:31851,y:33001,ptovrint:False,ptlb:distPower,ptin:_distPower,varname:node_4528,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:118,x:32122,y:32849,varname:node_118,prsc:2,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:6723,x:30828,y:32973,ptovrint:False,ptlb:noiseSpdX,ptin:_noiseSpdX,varname:node_6723,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:3422,x:30796,y:33090,ptovrint:False,ptlb:noiseSpdY,ptin:_noiseSpdY,varname:node_3422,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Time,id:867,x:30796,y:33169,varname:node_867,prsc:2;n:type:ShaderForge.SFN_Append,id:1321,x:30968,y:33046,varname:node_1321,prsc:2|A-6723-OUT,B-3422-OUT;n:type:ShaderForge.SFN_Multiply,id:4327,x:31150,y:33159,varname:node_4327,prsc:2|A-1321-OUT,B-867-T;n:type:ShaderForge.SFN_Add,id:5421,x:31427,y:32985,varname:node_5421,prsc:2|A-7134-OUT,B-4327-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6705,x:30621,y:32715,ptovrint:False,ptlb:tilieU,ptin:_tilieU,varname:node_6705,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:8519,x:30621,y:32810,ptovrint:False,ptlb:tileV,ptin:_tileV,varname:node_8519,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:5002,x:30898,y:32748,varname:node_5002,prsc:2|A-6705-OUT,B-8519-OUT;n:type:ShaderForge.SFN_Multiply,id:7134,x:31192,y:32713,varname:node_7134,prsc:2|A-9748-UVOUT,B-5002-OUT;n:type:ShaderForge.SFN_VertexColor,id:1609,x:31958,y:32741,varname:node_1609,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8781,x:32066,y:32931,varname:node_8781,prsc:2|A-1609-A,B-4528-OUT;n:type:ShaderForge.SFN_Tex2d,id:9044,x:31656,y:33407,ptovrint:False,ptlb:texMask,ptin:_texMask,varname:node_9044,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:00d1dc61304fe4183bb5dae9ee4dd842,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:7491,x:32539,y:33187,varname:node_7491,prsc:2|A-2830-OUT,B-9666-OUT;n:type:ShaderForge.SFN_Power,id:2492,x:31943,y:33429,varname:node_2492,prsc:2|VAL-9044-R,EXP-91-OUT;n:type:ShaderForge.SFN_ValueProperty,id:91,x:31719,y:33639,ptovrint:False,ptlb:texMaskDensity,ptin:_texMaskDensity,varname:node_91,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:6032,x:32106,y:33457,varname:node_6032,prsc:2|A-2492-OUT,B-4037-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4037,x:31907,y:33639,ptovrint:False,ptlb:texMaskPower,ptin:_texMaskPower,varname:node_4037,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:9666,x:32385,y:33417,ptovrint:False,ptlb:useTexMask,ptin:_useTexMask,varname:node_9666,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4458-OUT,B-6032-OUT;n:type:ShaderForge.SFN_Vector1,id:4458,x:32138,y:33350,varname:node_4458,prsc:2,v1:1;proporder:5489-8671-4528-6723-3422-6705-8519-9044-91-4037-9666;pass:END;sub:END;*/

Shader "KY/distortion" {
    Properties {
        _distTex ("distTex", 2D) = "white" {}
        _distTexDensity ("distTexDensity", Float ) = 1
        _distPower ("distPower", Float ) = 1
        _noiseSpdX ("noiseSpdX", Float ) = 0
        _noiseSpdY ("noiseSpdY", Float ) = 0
        _tilieU ("tilieU", Float ) = 1
        _tileV ("tileV", Float ) = 1
        _texMask ("texMask", 2D) = "white" {}
        _texMaskDensity ("texMaskDensity", Float ) = 1
        _texMaskPower ("texMaskPower", Float ) = 1
        [MaterialToggle] _useTexMask ("useTexMask", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
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
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _distTex; uniform float4 _distTex_ST;
            uniform float _distTexDensity;
            uniform float _distPower;
            uniform float _noiseSpdX;
            uniform float _noiseSpdY;
            uniform float _tilieU;
            uniform float _tileV;
            uniform sampler2D _texMask; uniform float4 _texMask_ST;
            uniform float _texMaskDensity;
            uniform float _texMaskPower;
            uniform fixed _useTexMask;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 screenPos : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos(v.vertex );
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float node_118 = 0.0;
                float node_8781 = (i.vertexColor.a*_distPower);
                float4 node_867 = _Time + _TimeEditor;
                float2 node_5421 = ((i.uv0*float2(_tilieU,_tileV))+(float2(_noiseSpdX,_noiseSpdY)*node_867.g));
                float4 _distTex_var = tex2D(_distTex,TRANSFORM_TEX(node_5421, _distTex));
                float4 _texMask_var = tex2D(_texMask,TRANSFORM_TEX(i.uv0, _texMask));
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (lerp(float2(node_118,node_118),float2(node_8781,node_8781),pow(float2(_distTex_var.r,_distTex_var.g),_distTexDensity))*lerp( 1.0, (pow(_texMask_var.r,_texMaskDensity)*_texMaskPower), _useTexMask ));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float3 finalColor = 0;
                return fixed4(lerp(sceneColor.rgb, finalColor,0.0),1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
