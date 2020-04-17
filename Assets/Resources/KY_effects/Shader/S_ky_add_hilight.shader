// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:35214,y:32718,varname:node_4795,prsc:2|emission-5896-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32575,y:32870,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-580-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:33744,y:33261,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:6524,x:31793,y:32641,varname:node_6524,prsc:2,uv:0;n:type:ShaderForge.SFN_Time,id:2775,x:31462,y:33206,varname:node_2775,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9165,x:32040,y:32757,varname:node_9165,prsc:2|A-6524-UVOUT,B-3796-OUT;n:type:ShaderForge.SFN_Add,id:580,x:32275,y:32860,varname:node_580,prsc:2|A-9165-OUT,B-5463-OUT;n:type:ShaderForge.SFN_Multiply,id:5463,x:32069,y:32933,varname:node_5463,prsc:2|A-4591-OUT,B-2775-T;n:type:ShaderForge.SFN_ValueProperty,id:880,x:34164,y:33090,ptovrint:False,ptlb:emissive,ptin:_emissive,varname:node_880,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:5110,x:31493,y:32725,ptovrint:False,ptlb:baseTexU,ptin:_baseTexU,varname:node_5110,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:9890,x:31493,y:32838,ptovrint:False,ptlb:baseTexV,ptin:_baseTexV,varname:node_9890,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:3796,x:31793,y:32809,varname:node_3796,prsc:2|A-5110-OUT,B-9890-OUT;n:type:ShaderForge.SFN_ValueProperty,id:258,x:31544,y:32973,ptovrint:False,ptlb:baseTexSpdX,ptin:_baseTexSpdX,varname:node_258,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:359,x:31533,y:33064,ptovrint:False,ptlb:baseTexSpdY,ptin:_baseTexSpdY,varname:node_359,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:4591,x:31793,y:32959,varname:node_4591,prsc:2|A-258-OUT,B-359-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3575,x:33533,y:32977,ptovrint:False,ptlb:baseTexDensity,ptin:_baseTexDensity,varname:node_3575,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Power,id:8758,x:33859,y:33052,varname:node_8758,prsc:2|VAL-6074-RGB,EXP-3575-OUT;n:type:ShaderForge.SFN_Multiply,id:3898,x:34432,y:33070,varname:node_3898,prsc:2|A-1354-OUT,B-880-OUT,C-2053-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:1354,x:34141,y:32891,ptovrint:False,ptlb:useTexColor,ptin:_useTexColor,varname:node_1354,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-9896-OUT,B-8758-OUT;n:type:ShaderForge.SFN_Multiply,id:5866,x:34701,y:33407,varname:node_5866,prsc:2|A-673-OUT,B-2053-A,C-746-OUT,D-6820-OUT;n:type:ShaderForge.SFN_Power,id:1567,x:33715,y:33442,varname:node_1567,prsc:2|VAL-1576-OUT,EXP-9704-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9704,x:33383,y:33506,ptovrint:False,ptlb:alphaDensity,ptin:_alphaDensity,varname:node_9704,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Power,id:9896,x:33939,y:32861,varname:node_9896,prsc:2|VAL-2829-OUT,EXP-3575-OUT;n:type:ShaderForge.SFN_Clamp01,id:2829,x:33731,y:32739,varname:node_2829,prsc:2|IN-146-OUT;n:type:ShaderForge.SFN_Add,id:6878,x:34004,y:33574,varname:node_6878,prsc:2|A-2053-R,B-2053-G,C-2053-B;n:type:ShaderForge.SFN_Clamp01,id:746,x:34407,y:33575,varname:node_746,prsc:2|IN-3741-OUT;n:type:ShaderForge.SFN_Power,id:3741,x:34221,y:33616,varname:node_3741,prsc:2|VAL-6878-OUT,EXP-8595-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8595,x:33939,y:33736,ptovrint:False,ptlb:vertColorDensity,ptin:_vertColorDensity,varname:node_8595,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:8940,x:33715,y:33606,ptovrint:False,ptlb:alphaPower,ptin:_alphaPower,varname:node_8940,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:673,x:34221,y:33425,varname:node_673,prsc:2|A-1567-OUT,B-8940-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1576,x:33442,y:33321,ptovrint:False,ptlb:haveAlpha,ptin:_haveAlpha,varname:node_1576,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-7000-OUT,B-6074-A;n:type:ShaderForge.SFN_Multiply,id:8623,x:33257,y:32627,varname:node_8623,prsc:2|A-6074-R,B-6074-G,C-6074-B;n:type:ShaderForge.SFN_SwitchProperty,id:146,x:33509,y:32695,ptovrint:False,ptlb:simpleToon,ptin:_simpleToon,varname:node_146,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7000-OUT,B-8623-OUT;n:type:ShaderForge.SFN_Add,id:4585,x:32981,y:32458,varname:node_4585,prsc:2|A-9874-OUT,B-166-OUT,C-7124-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:9874,x:32765,y:32374,ptovrint:False,ptlb:notUseRch,ptin:_notUseRch,varname:node_9874,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6074-R,B-1439-OUT;n:type:ShaderForge.SFN_Vector1,id:1439,x:32562,y:32637,varname:node_1439,prsc:2,v1:0;n:type:ShaderForge.SFN_SwitchProperty,id:166,x:32765,y:32532,ptovrint:False,ptlb:notUseGch,ptin:_notUseGch,varname:node_166,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6074-G,B-1439-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7124,x:32765,y:32690,ptovrint:False,ptlb:notUseBch,ptin:_notUseBch,varname:node_7124,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6074-B,B-1439-OUT;n:type:ShaderForge.SFN_Divide,id:7000,x:33145,y:33060,varname:node_7000,prsc:2|A-4585-OUT,B-5178-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5178,x:32813,y:33158,ptovrint:False,ptlb:channelDivid,ptin:_channelDivid,varname:node_5178,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Tex2d,id:1808,x:33327,y:31983,varname:node_1808,prsc:2,tex:bf54be6444ced4335a0959f0f6a27b1b,ntxv:0,isnm:False|UVIN-1407-OUT,TEX-5707-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:5707,x:33104,y:31976,ptovrint:False,ptlb:hilightNoiseTex,ptin:_hilightNoiseTex,varname:node_5707,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bf54be6444ced4335a0959f0f6a27b1b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:4442,x:32605,y:31648,varname:node_4442,prsc:2,uv:0;n:type:ShaderForge.SFN_Append,id:700,x:32713,y:31794,varname:node_700,prsc:2|A-8571-OUT,B-108-OUT;n:type:ShaderForge.SFN_Append,id:3427,x:32713,y:31965,varname:node_3427,prsc:2|A-1913-OUT,B-6540-OUT;n:type:ShaderForge.SFN_Multiply,id:2534,x:32911,y:31654,varname:node_2534,prsc:2|A-4442-UVOUT,B-700-OUT;n:type:ShaderForge.SFN_Multiply,id:153,x:32928,y:31872,varname:node_153,prsc:2|A-3427-OUT,B-9571-T;n:type:ShaderForge.SFN_Time,id:9571,x:32408,y:31993,varname:node_9571,prsc:2;n:type:ShaderForge.SFN_Add,id:1407,x:33093,y:31800,varname:node_1407,prsc:2|A-2534-OUT,B-153-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8571,x:32337,y:31584,ptovrint:False,ptlb:hilightTileU,ptin:_hilightTileU,varname:node_8571,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:108,x:32321,y:31683,ptovrint:False,ptlb:hilightTileV,ptin:_hilightTileV,varname:node_108,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:1913,x:32356,y:31818,ptovrint:False,ptlb:hilightAspdX,ptin:_hilightAspdX,varname:node_1913,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.3;n:type:ShaderForge.SFN_ValueProperty,id:6540,x:32346,y:31913,ptovrint:False,ptlb:hilightAspdY,ptin:_hilightAspdY,varname:node_6540,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:1919,x:33104,y:32140,varname:node_1919,prsc:2|A-2534-OUT,B-7055-OUT;n:type:ShaderForge.SFN_Tex2d,id:4675,x:33327,y:32229,varname:node_4675,prsc:2,tex:bf54be6444ced4335a0959f0f6a27b1b,ntxv:0,isnm:False|UVIN-1919-OUT,TEX-5707-TEX;n:type:ShaderForge.SFN_Multiply,id:7055,x:32908,y:32123,varname:node_7055,prsc:2|A-9571-T,B-372-OUT;n:type:ShaderForge.SFN_Append,id:372,x:32731,y:32154,varname:node_372,prsc:2|A-5498-OUT,B-6266-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5498,x:32457,y:32141,ptovrint:False,ptlb:hilightBspdX,ptin:_hilightBspdX,varname:node_5498,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-0.2;n:type:ShaderForge.SFN_ValueProperty,id:6266,x:32477,y:32248,ptovrint:False,ptlb:hilightBspdY,ptin:_hilightBspdY,varname:node_6266,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-0.2;n:type:ShaderForge.SFN_Add,id:7287,x:33586,y:32189,varname:node_7287,prsc:2|A-1808-R,B-1808-B;n:type:ShaderForge.SFN_Multiply,id:6352,x:33590,y:32367,varname:node_6352,prsc:2|A-1808-R,B-4675-B;n:type:ShaderForge.SFN_Multiply,id:5745,x:33843,y:32277,varname:node_5745,prsc:2|A-7287-OUT,B-3366-OUT;n:type:ShaderForge.SFN_Multiply,id:388,x:33841,y:32441,varname:node_388,prsc:2|A-3366-OUT,B-6352-OUT;n:type:ShaderForge.SFN_Multiply,id:4166,x:34032,y:32434,varname:node_4166,prsc:2|A-5745-OUT,B-388-OUT;n:type:ShaderForge.SFN_Vector1,id:3366,x:33670,y:32311,varname:node_3366,prsc:2,v1:50;n:type:ShaderForge.SFN_Multiply,id:8963,x:34227,y:32619,varname:node_8963,prsc:2|A-4166-OUT,B-3339-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3339,x:34032,y:32619,ptovrint:False,ptlb:hilightPower,ptin:_hilightPower,varname:node_3339,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Multiply,id:3977,x:34437,y:32722,varname:node_3977,prsc:2|A-8963-OUT,B-1354-OUT;n:type:ShaderForge.SFN_Multiply,id:3972,x:34638,y:32722,varname:node_3972,prsc:2|A-3977-OUT,B-6689-RGB;n:type:ShaderForge.SFN_Color,id:6689,x:34437,y:32876,ptovrint:False,ptlb:hilightColor,ptin:_hilightColor,varname:node_6689,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Add,id:4882,x:34907,y:32918,varname:node_4882,prsc:2|A-3972-OUT,B-3898-OUT;n:type:ShaderForge.SFN_DepthBlend,id:2875,x:34394,y:33914,varname:node_2875,prsc:2|DIST-5235-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5235,x:34130,y:33934,ptovrint:False,ptlb:depthBlend,ptin:_depthBlend,varname:node_5235,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:6820,x:34584,y:33839,ptovrint:False,ptlb:useDpthBlend,ptin:_useDpthBlend,varname:node_6820,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-554-OUT,B-2875-OUT;n:type:ShaderForge.SFN_Vector1,id:554,x:34324,y:33825,varname:node_554,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:5896,x:34991,y:33235,varname:node_5896,prsc:2|A-4882-OUT,B-5866-OUT;proporder:6074-880-5110-9890-258-359-3575-1354-9704-8595-8940-1576-146-9874-166-7124-5178-5707-8571-108-1913-6540-5498-6266-3339-6689-5235-6820;pass:END;sub:END;*/

Shader "KY/add_hilight" {
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
        _hilightNoiseTex ("hilightNoiseTex", 2D) = "white" {}
        _hilightTileU ("hilightTileU", Float ) = 1
        _hilightTileV ("hilightTileV", Float ) = 1
        _hilightAspdX ("hilightAspdX", Float ) = 0.3
        _hilightAspdY ("hilightAspdY", Float ) = 1
        _hilightBspdX ("hilightBspdX", Float ) = -0.2
        _hilightBspdY ("hilightBspdY", Float ) = -0.2
        _hilightPower ("hilightPower", Float ) = 10
        _hilightColor ("hilightColor", Color) = (1,1,1,1)
        _depthBlend ("depthBlend", Float ) = 1
        [MaterialToggle] _useDpthBlend ("useDpthBlend", Float ) = 1
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
            uniform sampler2D _hilightNoiseTex; uniform float4 _hilightNoiseTex_ST;
            uniform float _hilightTileU;
            uniform float _hilightTileV;
            uniform float _hilightAspdX;
            uniform float _hilightAspdY;
            uniform float _hilightBspdX;
            uniform float _hilightBspdY;
            uniform float _hilightPower;
            uniform float4 _hilightColor;
            uniform float _depthBlend;
            uniform fixed _useDpthBlend;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
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
                float2 node_2534 = (i.uv0*float2(_hilightTileU,_hilightTileV));
                float4 node_9571 = _Time + _TimeEditor;
                float2 node_1407 = (node_2534+(float2(_hilightAspdX,_hilightAspdY)*node_9571.g));
                float4 node_1808 = tex2D(_hilightNoiseTex,TRANSFORM_TEX(node_1407, _hilightNoiseTex));
                float node_3366 = 50.0;
                float2 node_1919 = (node_2534+(node_9571.g*float2(_hilightBspdX,_hilightBspdY)));
                float4 node_4675 = tex2D(_hilightNoiseTex,TRANSFORM_TEX(node_1919, _hilightNoiseTex));
                float4 node_2775 = _Time + _TimeEditor;
                float2 node_580 = ((i.uv0*float2(_baseTexU,_baseTexV))+(float2(_baseTexSpdX,_baseTexSpdY)*node_2775.g));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_580, _MainTex));
                float node_1439 = 0.0;
                float node_7000 = ((lerp( _MainTex_var.r, node_1439, _notUseRch )+lerp( _MainTex_var.g, node_1439, _notUseGch )+lerp( _MainTex_var.b, node_1439, _notUseBch ))/_channelDivid);
                float3 _useTexColor_var = lerp( pow(saturate(lerp( node_7000, (_MainTex_var.r*_MainTex_var.g*_MainTex_var.b), _simpleToon )),_baseTexDensity), pow(_MainTex_var.rgb,_baseTexDensity), _useTexColor );
                float3 emissive = ((((((((node_1808.r+node_1808.b)*node_3366)*(node_3366*(node_1808.r*node_4675.b)))*_hilightPower)*_useTexColor_var)*_hilightColor.rgb)+(_useTexColor_var*_emissive*i.vertexColor.rgb))*((pow(lerp( node_7000, _MainTex_var.a, _haveAlpha ),_alphaDensity)*_alphaPower)*i.vertexColor.a*saturate(pow((i.vertexColor.r+i.vertexColor.g+i.vertexColor.b),_vertColorDensity))*lerp( 1.0, saturate((sceneZ-partZ)/_depthBlend), _useDpthBlend )));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
