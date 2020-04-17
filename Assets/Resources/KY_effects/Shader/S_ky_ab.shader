// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:34933,y:32704,varname:node_4795,prsc:2|emission-3898-OUT,alpha-5866-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32614,y:32600,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-580-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:33783,y:32991,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:6524,x:31832,y:32371,varname:node_6524,prsc:2,uv:0;n:type:ShaderForge.SFN_Time,id:2775,x:31501,y:32936,varname:node_2775,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9165,x:32079,y:32487,varname:node_9165,prsc:2|A-6524-UVOUT,B-3796-OUT;n:type:ShaderForge.SFN_Add,id:580,x:32314,y:32590,varname:node_580,prsc:2|A-9165-OUT,B-5463-OUT;n:type:ShaderForge.SFN_Multiply,id:5463,x:32108,y:32663,varname:node_5463,prsc:2|A-4591-OUT,B-2775-T;n:type:ShaderForge.SFN_ValueProperty,id:880,x:34203,y:32820,ptovrint:False,ptlb:emissive,ptin:_emissive,varname:node_880,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:5110,x:31532,y:32455,ptovrint:False,ptlb:baseTexU,ptin:_baseTexU,varname:node_5110,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:9890,x:31532,y:32568,ptovrint:False,ptlb:baseTexV,ptin:_baseTexV,varname:node_9890,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:3796,x:31832,y:32539,varname:node_3796,prsc:2|A-5110-OUT,B-9890-OUT;n:type:ShaderForge.SFN_ValueProperty,id:258,x:31583,y:32703,ptovrint:False,ptlb:baseTexSpdX,ptin:_baseTexSpdX,varname:node_258,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:359,x:31572,y:32794,ptovrint:False,ptlb:baseTexSpdY,ptin:_baseTexSpdY,varname:node_359,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:4591,x:31832,y:32689,varname:node_4591,prsc:2|A-258-OUT,B-359-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3575,x:33572,y:32707,ptovrint:False,ptlb:baseTexDensity,ptin:_baseTexDensity,varname:node_3575,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Power,id:8758,x:33898,y:32782,varname:node_8758,prsc:2|VAL-6074-RGB,EXP-3575-OUT;n:type:ShaderForge.SFN_Multiply,id:3898,x:34641,y:32785,varname:node_3898,prsc:2|A-1354-OUT,B-880-OUT,C-2053-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:1354,x:34180,y:32621,ptovrint:False,ptlb:useTexColor,ptin:_useTexColor,varname:node_1354,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-9896-OUT,B-8758-OUT;n:type:ShaderForge.SFN_Multiply,id:5866,x:34740,y:33137,varname:node_5866,prsc:2|A-673-OUT,B-2053-A,C-746-OUT,D-8617-OUT,E-6233-OUT;n:type:ShaderForge.SFN_Power,id:1567,x:33754,y:33172,varname:node_1567,prsc:2|VAL-1576-OUT,EXP-9704-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9704,x:33422,y:33236,ptovrint:False,ptlb:alphaDensity,ptin:_alphaDensity,varname:node_9704,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Power,id:9896,x:33978,y:32591,varname:node_9896,prsc:2|VAL-2829-OUT,EXP-3575-OUT;n:type:ShaderForge.SFN_Clamp01,id:2829,x:33770,y:32469,varname:node_2829,prsc:2|IN-146-OUT;n:type:ShaderForge.SFN_Add,id:6878,x:34043,y:33304,varname:node_6878,prsc:2|A-2053-R,B-2053-G,C-2053-B;n:type:ShaderForge.SFN_Clamp01,id:746,x:34446,y:33305,varname:node_746,prsc:2|IN-3741-OUT;n:type:ShaderForge.SFN_Power,id:3741,x:34260,y:33346,varname:node_3741,prsc:2|VAL-6878-OUT,EXP-8595-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8595,x:33978,y:33466,ptovrint:False,ptlb:vertColorDensity,ptin:_vertColorDensity,varname:node_8595,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:8940,x:33754,y:33336,ptovrint:False,ptlb:alphaPower,ptin:_alphaPower,varname:node_8940,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:673,x:34260,y:33155,varname:node_673,prsc:2|A-1567-OUT,B-8940-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1576,x:33481,y:33051,ptovrint:False,ptlb:haveAlpha,ptin:_haveAlpha,varname:node_1576,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-7000-OUT,B-6074-A;n:type:ShaderForge.SFN_Multiply,id:8623,x:33296,y:32357,varname:node_8623,prsc:2|A-6074-R,B-6074-G,C-6074-B;n:type:ShaderForge.SFN_SwitchProperty,id:146,x:33548,y:32425,ptovrint:False,ptlb:simpleToon,ptin:_simpleToon,varname:node_146,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7000-OUT,B-8623-OUT;n:type:ShaderForge.SFN_Add,id:4585,x:33020,y:32188,varname:node_4585,prsc:2|A-9874-OUT,B-166-OUT,C-7124-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:9874,x:32804,y:32104,ptovrint:False,ptlb:notUseRch,ptin:_notUseRch,varname:node_9874,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6074-R,B-1439-OUT;n:type:ShaderForge.SFN_Vector1,id:1439,x:32601,y:32367,varname:node_1439,prsc:2,v1:0;n:type:ShaderForge.SFN_SwitchProperty,id:166,x:32804,y:32262,ptovrint:False,ptlb:notUseGch,ptin:_notUseGch,varname:node_166,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6074-G,B-1439-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7124,x:32804,y:32420,ptovrint:False,ptlb:notUseBch,ptin:_notUseBch,varname:node_7124,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6074-B,B-1439-OUT;n:type:ShaderForge.SFN_Divide,id:7000,x:33184,y:32790,varname:node_7000,prsc:2|A-4585-OUT,B-5178-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5178,x:32852,y:32888,ptovrint:False,ptlb:channelDivid,ptin:_channelDivid,varname:node_5178,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_SwitchProperty,id:8617,x:34519,y:33566,ptovrint:False,ptlb:notUseDepthBlend,ptin:_notUseDepthBlend,varname:node_8617,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7657-OUT,B-275-OUT;n:type:ShaderForge.SFN_Vector1,id:275,x:34292,y:33531,varname:node_275,prsc:2,v1:1;n:type:ShaderForge.SFN_DepthBlend,id:7657,x:34186,y:33624,varname:node_7657,prsc:2|DIST-1975-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1975,x:33881,y:33591,ptovrint:False,ptlb:depthBlend,ptin:_depthBlend,varname:node_1975,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:2980,x:33825,y:33807,ptovrint:False,ptlb:fresPower,ptin:_fresPower,varname:node_2980,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Fresnel,id:6778,x:34038,y:33849,varname:node_6778,prsc:2|EXP-2980-OUT;n:type:ShaderForge.SFN_OneMinus,id:9676,x:34194,y:33935,varname:node_9676,prsc:2|IN-6778-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3725,x:34381,y:33888,ptovrint:False,ptlb:fresInv,ptin:_fresInv,varname:node_3725,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6778-OUT,B-9676-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:6233,x:34575,y:33795,ptovrint:False,ptlb:useFresnel,ptin:_useFresnel,varname:node_6233,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-5096-OUT,B-3725-OUT;n:type:ShaderForge.SFN_Vector1,id:5096,x:34389,y:33760,varname:node_5096,prsc:2,v1:1;proporder:6074-880-5110-9890-258-359-3575-1354-9704-8595-8940-1576-146-9874-166-7124-5178-8617-1975-2980-3725-6233;pass:END;sub:END;*/

Shader "KY/ab" {
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
        [MaterialToggle] _notUseRch ("notUseRch", Float ) = 0
        [MaterialToggle] _notUseGch ("notUseGch", Float ) = 0
        [MaterialToggle] _notUseBch ("notUseBch", Float ) = 0
        _channelDivid ("channelDivid", Float ) = 3
        [MaterialToggle] _notUseDepthBlend ("notUseDepthBlend", Float ) = 0
        _depthBlend ("depthBlend", Float ) = 1
        _fresPower ("fresPower", Float ) = 0
        [MaterialToggle] _fresInv ("fresInv", Float ) = 0
        [MaterialToggle] _useFresnel ("useFresnel", Float ) = 1
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
            uniform fixed _notUseRch;
            uniform fixed _notUseGch;
            uniform fixed _notUseBch;
            uniform float _channelDivid;
            uniform fixed _notUseDepthBlend;
            uniform float _depthBlend;
            uniform float _fresPower;
            uniform fixed _fresInv;
            uniform fixed _useFresnel;
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
                float4 projPos : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
////// Emissive:
                float4 node_2775 = _Time + _TimeEditor;
                float2 node_580 = ((i.uv0*float2(_baseTexU,_baseTexV))+(float2(_baseTexSpdX,_baseTexSpdY)*node_2775.g));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_580, _MainTex));
                float node_1439 = 0.0;
                float node_7000 = ((lerp( _MainTex_var.r, node_1439, _notUseRch )+lerp( _MainTex_var.g, node_1439, _notUseGch )+lerp( _MainTex_var.b, node_1439, _notUseBch ))/_channelDivid);
                float3 emissive = (lerp( pow(saturate(lerp( node_7000, (_MainTex_var.r*_MainTex_var.g*_MainTex_var.b), _simpleToon )),_baseTexDensity), pow(_MainTex_var.rgb,_baseTexDensity), _useTexColor )*_emissive*i.vertexColor.rgb);
                float3 finalColor = emissive;
                float node_6778 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_fresPower);
                return fixed4(finalColor,((pow(lerp( node_7000, _MainTex_var.a, _haveAlpha ),_alphaDensity)*_alphaPower)*i.vertexColor.a*saturate(pow((i.vertexColor.r+i.vertexColor.g+i.vertexColor.b),_vertColorDensity))*lerp( saturate((sceneZ-partZ)/_depthBlend), 1.0, _notUseDepthBlend )*lerp( 1.0, lerp( node_6778, (1.0 - node_6778), _fresInv ), _useFresnel )));
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
