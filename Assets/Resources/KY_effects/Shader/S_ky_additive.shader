// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:32724,y:32693,varname:node_4795,prsc:2|emission-2393-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:31249,y:32483,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2393,x:32495,y:32793,varname:node_2393,prsc:2|A-320-OUT,B-2053-RGB,C-8175-OUT,D-2053-A,E-166-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32126,y:32802,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:8175,x:32173,y:32960,ptovrint:False,ptlb:emissivePower,ptin:_emissivePower,varname:node_8175,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Power,id:320,x:32359,y:32601,varname:node_320,prsc:2|VAL-3723-OUT,EXP-102-OUT;n:type:ShaderForge.SFN_ValueProperty,id:102,x:32094,y:32753,ptovrint:False,ptlb:texDensity,ptin:_texDensity,varname:node_102,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:9332,x:31547,y:32405,varname:node_9332,prsc:2|A-6074-R,B-6074-G;n:type:ShaderForge.SFN_Add,id:1435,x:31764,y:32405,varname:node_1435,prsc:2|A-9332-OUT,B-6074-B;n:type:ShaderForge.SFN_Clamp01,id:382,x:31962,y:32417,varname:node_382,prsc:2|IN-1435-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3723,x:32147,y:32515,ptovrint:False,ptlb:useTexColor,ptin:_useTexColor,varname:node_3723,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-382-OUT,B-6074-RGB;n:type:ShaderForge.SFN_DepthBlend,id:1474,x:32110,y:33176,varname:node_1474,prsc:2|DIST-2723-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2723,x:31884,y:33134,ptovrint:False,ptlb:depthBlend,ptin:_depthBlend,varname:node_2723,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_SwitchProperty,id:166,x:32331,y:33142,ptovrint:False,ptlb:notUseDepthBlend,ptin:_notUseDepthBlend,varname:node_166,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-1474-OUT,B-8325-OUT;n:type:ShaderForge.SFN_Vector1,id:8325,x:32155,y:33126,varname:node_8325,prsc:2,v1:1;proporder:6074-8175-102-3723-2723-166;pass:END;sub:END;*/

Shader "KY/additive" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _emissivePower ("emissivePower", Float ) = 1
        _texDensity ("texDensity", Float ) = 1
        [MaterialToggle] _useTexColor ("useTexColor", Float ) = 0
        _depthBlend ("depthBlend", Float ) = 0
        [MaterialToggle] _notUseDepthBlend ("notUseDepthBlend", Float ) = 0
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _emissivePower;
            uniform float _texDensity;
            uniform fixed _useTexColor;
            uniform float _depthBlend;
            uniform fixed _notUseDepthBlend;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 emissive = (pow(lerp( saturate(((_MainTex_var.r+_MainTex_var.g)+_MainTex_var.b)), _MainTex_var.rgb, _useTexColor ),_texDensity)*i.vertexColor.rgb*_emissivePower*i.vertexColor.a*lerp( saturate((sceneZ-partZ)/_depthBlend), 1.0, _notUseDepthBlend ));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0,0,0,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
