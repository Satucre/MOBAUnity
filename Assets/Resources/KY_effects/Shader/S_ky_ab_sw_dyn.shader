// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:34362,y:32703,varname:node_4795,prsc:2|emission-3898-OUT,alpha-5866-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:31402,y:32574,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:00d1dc61304fe4183bb5dae9ee4dd842,ntxv:0,isnm:False;n:type:ShaderForge.SFN_VertexColor,id:2053,x:33778,y:32987,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:880,x:33605,y:32731,ptovrint:False,ptlb:emissive,ptin:_emissive,varname:node_880,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:3898,x:34070,y:32784,varname:node_3898,prsc:2|A-7226-OUT,B-880-OUT,C-2499-RGB;n:type:ShaderForge.SFN_Multiply,id:5866,x:34070,y:33025,varname:node_5866,prsc:2|A-673-OUT,B-2053-A;n:type:ShaderForge.SFN_Power,id:1567,x:33415,y:33141,varname:node_1567,prsc:2|VAL-1793-OUT,EXP-9704-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9704,x:33140,y:33188,ptovrint:False,ptlb:alphaDensity,ptin:_alphaDensity,varname:node_9704,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_ValueProperty,id:8940,x:33577,y:33247,ptovrint:False,ptlb:alphaPower,ptin:_alphaPower,varname:node_8940,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:673,x:33803,y:33123,varname:node_673,prsc:2|A-1567-OUT,B-8940-OUT;n:type:ShaderForge.SFN_Power,id:5065,x:31791,y:32448,varname:node_5065,prsc:2|VAL-6074-RGB,EXP-5610-OUT;n:type:ShaderForge.SFN_Power,id:1946,x:31720,y:32839,varname:node_1946,prsc:2|VAL-6074-RGB,EXP-4802-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5610,x:31516,y:32446,ptovrint:False,ptlb:outDensity,ptin:_outDensity,varname:node_5610,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:9407,x:32005,y:32448,varname:node_9407,prsc:2|A-5065-OUT,B-9439-OUT;n:type:ShaderForge.SFN_Clamp01,id:483,x:32200,y:32436,varname:node_483,prsc:2|IN-9407-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9439,x:31775,y:32660,ptovrint:False,ptlb:outHardness,ptin:_outHardness,varname:node_9439,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:200;n:type:ShaderForge.SFN_ValueProperty,id:4802,x:31430,y:32877,ptovrint:False,ptlb:inDensity,ptin:_inDensity,varname:node_4802,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:4537,x:32123,y:32913,varname:node_4537,prsc:2|A-1946-OUT,B-854-OUT;n:type:ShaderForge.SFN_Subtract,id:9779,x:32408,y:32848,varname:node_9779,prsc:2|A-483-OUT,B-4537-OUT;n:type:ShaderForge.SFN_Clamp01,id:7226,x:32656,y:32848,varname:node_7226,prsc:2|IN-9779-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8146,x:32883,y:32848,varname:node_8146,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-7226-OUT;n:type:ShaderForge.SFN_Add,id:8385,x:33107,y:32896,varname:node_8385,prsc:2|A-8146-R,B-8146-G,C-8146-B;n:type:ShaderForge.SFN_Divide,id:1793,x:33260,y:32935,varname:node_1793,prsc:2|A-8385-OUT,B-9244-OUT;n:type:ShaderForge.SFN_Vector1,id:9244,x:33008,y:33042,varname:node_9244,prsc:2,v1:3;n:type:ShaderForge.SFN_Color,id:2499,x:33634,y:32867,ptovrint:False,ptlb:color,ptin:_color,varname:node_2499,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_VertexColor,id:4031,x:31475,y:33012,varname:node_4031,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:9645,x:31750,y:33214,ptovrint:False,ptlb:dynCorrect,ptin:_dynCorrect,varname:node_9645,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:854,x:31902,y:33040,varname:node_854,prsc:2|A-4031-R,B-9645-OUT;n:type:ShaderForge.SFN_If,id:4651,x:31684,y:33040,varname:node_4651,prsc:2|A-4031-R,B-2861-OUT,GT-4031-R,EQ-4031-R,LT-2861-OUT;n:type:ShaderForge.SFN_Vector1,id:2861,x:31443,y:33191,varname:node_2861,prsc:2,v1:0.1;proporder:6074-880-9704-8940-5610-9439-4802-2499-9645;pass:END;sub:END;*/

Shader "KY/ab_sw_dyn" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _emissive ("emissive", Float ) = 1
        _alphaDensity ("alphaDensity", Float ) = 2
        _alphaPower ("alphaPower", Float ) = 1
        _outDensity ("outDensity", Float ) = 2
        _outHardness ("outHardness", Float ) = 200
        _inDensity ("inDensity", Float ) = 1
        _color ("color", Color) = (0.5,0.5,0.5,1)
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _emissive;
            uniform float _alphaDensity;
            uniform float _alphaPower;
            uniform float _outDensity;
            uniform float _outHardness;
            uniform float _inDensity;
            uniform float4 _color;
            uniform float _dynCorrect;
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
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 node_7226 = saturate((saturate((pow(_MainTex_var.rgb,_outDensity)*_outHardness))-(pow(_MainTex_var.rgb,_inDensity)*(i.vertexColor.r*_dynCorrect))));
                float3 emissive = (node_7226*_emissive*_color.rgb);
                float3 finalColor = emissive;
                float3 node_8146 = node_7226.rgb;
                return fixed4(finalColor,((pow(((node_8146.r+node_8146.g+node_8146.b)/3.0),_alphaDensity)*_alphaPower)*i.vertexColor.a));
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
