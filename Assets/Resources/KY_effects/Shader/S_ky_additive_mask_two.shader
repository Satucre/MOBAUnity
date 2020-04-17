// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:32724,y:32693,varname:node_4795,prsc:2|emission-2393-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:31758,y:32488,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4bdc8455b20fa4c4fb7df73bb20e1cd6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2393,x:32495,y:32793,varname:node_2393,prsc:2|A-320-OUT,B-2053-RGB,C-8175-OUT,D-2053-A;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32126,y:32802,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:8175,x:32184,y:33007,ptovrint:False,ptlb:emissivePower,ptin:_emissivePower,varname:node_8175,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Power,id:320,x:32359,y:32601,varname:node_320,prsc:2|VAL-4997-OUT,EXP-102-OUT;n:type:ShaderForge.SFN_ValueProperty,id:102,x:31918,y:32754,ptovrint:False,ptlb:texDensity,ptin:_texDensity,varname:node_102,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ComponentMask,id:8237,x:31997,y:32437,varname:node_8237,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-6074-RGB;n:type:ShaderForge.SFN_If,id:4997,x:32220,y:32447,varname:node_4997,prsc:2|A-2086-OUT,B-4873-OUT,GT-8237-R,EQ-8237-G,LT-8237-B;n:type:ShaderForge.SFN_Vector1,id:4873,x:31927,y:32360,varname:node_4873,prsc:2,v1:-1;n:type:ShaderForge.SFN_ValueProperty,id:2086,x:32069,y:32337,ptovrint:False,ptlb:0-R_-1-G_-2-B,ptin:_0R_1G_2B,varname:node_2086,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:6074-8175-102-2086;pass:END;sub:END;*/

Shader "KY/additive_mask_two" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _emissivePower ("emissivePower", Float ) = 1
        _texDensity ("texDensity", Float ) = 1
        _0R_1G_2B ("0-R_-1-G_-2-B", Float ) = 0
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
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _emissivePower;
            uniform float _texDensity;
            uniform float _0R_1G_2B;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float node_4997_if_leA = step(_0R_1G_2B,(-1.0));
                float node_4997_if_leB = step((-1.0),_0R_1G_2B);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 node_8237 = _MainTex_var.rgb.rgb;
                float3 emissive = (pow(lerp((node_4997_if_leA*node_8237.b)+(node_4997_if_leB*node_8237.r),node_8237.g,node_4997_if_leA*node_4997_if_leB),_texDensity)*i.vertexColor.rgb*_emissivePower*i.vertexColor.a);
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
