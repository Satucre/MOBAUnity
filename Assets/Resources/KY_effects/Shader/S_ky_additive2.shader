// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:32724,y:32693,varname:node_4795,prsc:2|emission-2393-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:31245,y:32365,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5121-OUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32522,y:32788,varname:node_2393,prsc:2|A-320-OUT,B-2053-RGB,C-8175-OUT,D-2053-A,E-8434-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32126,y:32802,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:8175,x:32173,y:32960,ptovrint:False,ptlb:emissivePower,ptin:_emissivePower,varname:node_8175,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Power,id:320,x:32397,y:32598,varname:node_320,prsc:2|VAL-890-OUT,EXP-102-OUT;n:type:ShaderForge.SFN_ValueProperty,id:102,x:32071,y:32721,ptovrint:False,ptlb:texDensity,ptin:_texDensity,varname:node_102,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:890,x:32203,y:32500,varname:node_890,prsc:2|A-6846-OUT,B-6074-A;n:type:ShaderForge.SFN_Time,id:8675,x:30655,y:32657,varname:node_8675,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:2383,x:30729,y:32339,varname:node_2383,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:5121,x:31067,y:32365,varname:node_5121,prsc:2|A-2383-UVOUT,B-8962-OUT;n:type:ShaderForge.SFN_Multiply,id:8962,x:30878,y:32608,varname:node_8962,prsc:2|A-1887-OUT,B-8675-TSL;n:type:ShaderForge.SFN_ValueProperty,id:3028,x:30473,y:32441,ptovrint:False,ptlb:texSpdX,ptin:_texSpdX,varname:node_3028,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:8758,x:30473,y:32560,ptovrint:False,ptlb:texSpdY,ptin:_texSpdY,varname:node_8758,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:1887,x:30686,y:32501,varname:node_1887,prsc:2|A-3028-OUT,B-8758-OUT;n:type:ShaderForge.SFN_Add,id:4355,x:31616,y:32244,varname:node_4355,prsc:2|A-6074-R,B-6074-G,C-6074-B;n:type:ShaderForge.SFN_SwitchProperty,id:6846,x:32033,y:32370,ptovrint:False,ptlb:useTexColor,ptin:_useTexColor,varname:node_6846,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-594-OUT,B-9801-OUT;n:type:ShaderForge.SFN_Clamp01,id:594,x:31808,y:32244,varname:node_594,prsc:2|IN-4355-OUT;n:type:ShaderForge.SFN_Power,id:9801,x:31737,y:32520,varname:node_9801,prsc:2|VAL-6074-RGB,EXP-8099-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8099,x:31459,y:32607,ptovrint:False,ptlb:densityUp,ptin:_densityUp,varname:node_8099,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_DepthBlend,id:9224,x:32159,y:33169,varname:node_9224,prsc:2|DIST-9072-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9072,x:31946,y:33192,ptovrint:False,ptlb:depthBlend,ptin:_depthBlend,varname:node_9072,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:8434,x:32365,y:33132,ptovrint:False,ptlb:useDepthBlend,ptin:_useDepthBlend,varname:node_8434,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6082-OUT,B-9224-OUT;n:type:ShaderForge.SFN_Vector1,id:6082,x:32148,y:33083,varname:node_6082,prsc:2,v1:1;proporder:6074-8175-102-3028-8758-6846-8099-9072-8434;pass:END;sub:END;*/

Shader "KY/additive2" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _emissivePower ("emissivePower", Float ) = 1
        _texDensity ("texDensity", Float ) = 2
        _texSpdX ("texSpdX", Float ) = 0
        _texSpdY ("texSpdY", Float ) = 0
        [MaterialToggle] _useTexColor ("useTexColor", Float ) = 0
        _densityUp ("densityUp", Float ) = 1
        _depthBlend ("depthBlend", Float ) = 1
        [MaterialToggle] _useDepthBlend ("useDepthBlend", Float ) = 1
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
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _emissivePower;
            uniform float _texDensity;
            uniform float _texSpdX;
            uniform float _texSpdY;
            uniform fixed _useTexColor;
            uniform float _densityUp;
            uniform float _depthBlend;
            uniform fixed _useDepthBlend;
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
                float4 node_8675 = _Time + _TimeEditor;
                float2 node_5121 = (i.uv0+(float2(_texSpdX,_texSpdY)*node_8675.r));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_5121, _MainTex));
                float3 emissive = (pow((lerp( saturate((_MainTex_var.r+_MainTex_var.g+_MainTex_var.b)), pow(_MainTex_var.rgb,_densityUp), _useTexColor )*_MainTex_var.a),_texDensity)*i.vertexColor.rgb*_emissivePower*i.vertexColor.a*lerp( 1.0, saturate((sceneZ-partZ)/_depthBlend), _useDepthBlend ));
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
