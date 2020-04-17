// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.27 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.27;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:34571,y:32742,varname:node_4795,prsc:2|emission-3898-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32614,y:32600,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4689-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:33352,y:32976,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:6524,x:30645,y:32194,varname:node_6524,prsc:2,uv:0;n:type:ShaderForge.SFN_Time,id:2775,x:30314,y:32759,varname:node_2775,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:8025,x:31777,y:33004,ptovrint:False,ptlb:noseTex,ptin:_noseTex,varname:node_8025,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0b365c3f883d54bbf8994ed5f1b892b9,ntxv:0,isnm:False|UVIN-7621-UVOUT;n:type:ShaderForge.SFN_Add,id:580,x:31127,y:32413,varname:node_580,prsc:2|A-6524-UVOUT,B-5463-OUT;n:type:ShaderForge.SFN_Multiply,id:5463,x:30921,y:32486,varname:node_5463,prsc:2|A-4591-OUT,B-2775-T;n:type:ShaderForge.SFN_TexCoord,id:5701,x:30887,y:32861,varname:node_5701,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:6405,x:31318,y:32995,varname:node_6405,prsc:2|A-5701-UVOUT,B-8317-OUT;n:type:ShaderForge.SFN_Multiply,id:8317,x:31140,y:33194,varname:node_8317,prsc:2|A-2775-T,B-5979-OUT;n:type:ShaderForge.SFN_Power,id:9282,x:31976,y:33057,varname:node_9282,prsc:2|VAL-8025-R,EXP-3205-OUT;n:type:ShaderForge.SFN_Multiply,id:8785,x:32136,y:33068,varname:node_8785,prsc:2|A-9282-OUT,B-7346-OUT;n:type:ShaderForge.SFN_Add,id:4689,x:32432,y:32750,varname:node_4689,prsc:2|A-9847-OUT,B-8785-OUT;n:type:ShaderForge.SFN_ValueProperty,id:880,x:33632,y:32819,ptovrint:False,ptlb:emissive,ptin:_emissive,varname:node_880,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:258,x:30396,y:32526,ptovrint:False,ptlb:baseTexSpdX,ptin:_baseTexSpdX,varname:node_258,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:359,x:30385,y:32617,ptovrint:False,ptlb:baseTexSpdY,ptin:_baseTexSpdY,varname:node_359,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:4591,x:30645,y:32512,varname:node_4591,prsc:2|A-258-OUT,B-359-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7934,x:30647,y:33242,ptovrint:False,ptlb:noiseTexSpdX,ptin:_noiseTexSpdX,varname:node_7934,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:3800,x:30647,y:33361,ptovrint:False,ptlb:noiseTexSpdY,ptin:_noiseTexSpdY,varname:node_3800,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:5979,x:30888,y:33355,varname:node_5979,prsc:2|A-7934-OUT,B-3800-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3205,x:31727,y:33273,ptovrint:False,ptlb:noiseDensity,ptin:_noiseDensity,varname:node_3205,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:7346,x:31870,y:33335,ptovrint:False,ptlb:noisePower,ptin:_noisePower,varname:node_7346,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_ValueProperty,id:3575,x:32994,y:32840,ptovrint:False,ptlb:baseTexDensity,ptin:_baseTexDensity,varname:node_3575,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Power,id:8758,x:33340,y:32757,varname:node_8758,prsc:2|VAL-6074-RGB,EXP-3575-OUT;n:type:ShaderForge.SFN_Multiply,id:3898,x:34070,y:32784,varname:node_3898,prsc:2|A-1354-OUT,B-880-OUT,C-2053-RGB,D-5866-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1354,x:33609,y:32620,ptovrint:False,ptlb:useTexColor,ptin:_useTexColor,varname:node_1354,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-9896-OUT,B-8758-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2719,x:31305,y:32413,varname:node_2719,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-580-OUT;n:type:ShaderForge.SFN_Append,id:9847,x:32072,y:32398,varname:node_9847,prsc:2|A-2719-R,B-3222-OUT;n:type:ShaderForge.SFN_OneMinus,id:5639,x:31509,y:32473,varname:node_5639,prsc:2|IN-2719-G;n:type:ShaderForge.SFN_Power,id:3222,x:31856,y:32549,varname:node_3222,prsc:2|VAL-7853-OUT,EXP-9217-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9217,x:31615,y:32729,ptovrint:False,ptlb:UVcompY,ptin:_UVcompY,varname:node_9217,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:7853,x:31668,y:32549,ptovrint:False,ptlb:compYInv,ptin:_compYInv,varname:node_7853,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2719-G,B-5639-OUT;n:type:ShaderForge.SFN_Multiply,id:5866,x:34169,y:33136,varname:node_5866,prsc:2|A-673-OUT,B-2053-A,C-746-OUT,D-3864-OUT,E-9018-OUT;n:type:ShaderForge.SFN_Power,id:1567,x:33183,y:33171,varname:node_1567,prsc:2|VAL-1576-OUT,EXP-9704-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9704,x:32916,y:33216,ptovrint:False,ptlb:alphaDensity,ptin:_alphaDensity,varname:node_9704,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Add,id:1076,x:32849,y:32455,varname:node_1076,prsc:2|A-6074-R,B-6074-G,C-6074-B;n:type:ShaderForge.SFN_Power,id:9896,x:33440,y:32471,varname:node_9896,prsc:2|VAL-8236-OUT,EXP-3575-OUT;n:type:ShaderForge.SFN_Clamp01,id:2829,x:33086,y:32455,varname:node_2829,prsc:2|IN-1076-OUT;n:type:ShaderForge.SFN_Add,id:6878,x:33543,y:33269,varname:node_6878,prsc:2|A-2053-R,B-2053-G,C-2053-B;n:type:ShaderForge.SFN_Clamp01,id:746,x:33973,y:33284,varname:node_746,prsc:2|IN-3741-OUT;n:type:ShaderForge.SFN_Power,id:3741,x:33788,y:33299,varname:node_3741,prsc:2|VAL-6878-OUT,EXP-8595-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8595,x:33543,y:33457,ptovrint:False,ptlb:vertColorDensity,ptin:_vertColorDensity,varname:node_8595,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:8940,x:33183,y:33335,ptovrint:False,ptlb:alphaPower,ptin:_alphaPower,varname:node_8940,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:673,x:33689,y:33154,varname:node_673,prsc:2|A-1567-OUT,B-8940-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1576,x:32928,y:33031,ptovrint:False,ptlb:haveAlpha,ptin:_haveAlpha,varname:node_1576,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-936-OUT,B-6074-A;n:type:ShaderForge.SFN_Tex2d,id:6677,x:33376,y:33610,ptovrint:False,ptlb:texMask,ptin:_texMask,varname:node_6677,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:00d1dc61304fe4183bb5dae9ee4dd842,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Power,id:2318,x:33629,y:33627,varname:node_2318,prsc:2|VAL-6677-R,EXP-1500-OUT;n:type:ShaderForge.SFN_Multiply,id:8796,x:33815,y:33639,varname:node_8796,prsc:2|A-2318-OUT,B-9705-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1500,x:33396,y:33802,ptovrint:False,ptlb:texMaskDensity,ptin:_texMaskDensity,varname:node_1500,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:9705,x:33640,y:33830,ptovrint:False,ptlb:texMaskPower,ptin:_texMaskPower,varname:node_9705,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Clamp01,id:3864,x:33949,y:33582,varname:node_3864,prsc:2|IN-8796-OUT;n:type:ShaderForge.SFN_DepthBlend,id:3858,x:33807,y:34056,varname:node_3858,prsc:2|DIST-94-OUT;n:type:ShaderForge.SFN_ValueProperty,id:94,x:33602,y:34056,ptovrint:False,ptlb:depthBlend,ptin:_depthBlend,varname:node_94,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:9018,x:34010,y:33896,ptovrint:False,ptlb:useDepthBlend,ptin:_useDepthBlend,varname:node_9018,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-9324-OUT,B-3858-OUT;n:type:ShaderForge.SFN_Vector1,id:9324,x:33773,y:33967,varname:node_9324,prsc:2,v1:1;n:type:ShaderForge.SFN_Rotator,id:7621,x:31565,y:33021,varname:node_7621,prsc:2|UVIN-6405-OUT,ANG-5768-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5768,x:31369,y:33174,ptovrint:False,ptlb:rotNoiseTex,ptin:_rotNoiseTex,varname:node_5768,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Divide,id:936,x:33011,y:32615,varname:node_936,prsc:2|A-1076-OUT,B-6323-OUT;n:type:ShaderForge.SFN_Vector1,id:6323,x:32837,y:32720,varname:node_6323,prsc:2,v1:3;n:type:ShaderForge.SFN_SwitchProperty,id:8236,x:33273,y:32455,ptovrint:False,ptlb:correctEmissive,ptin:_correctEmissive,varname:node_8236,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2829-OUT,B-936-OUT;proporder:6074-8025-880-258-359-7934-3800-3205-7346-3575-1354-9217-7853-9704-8595-8940-1576-6677-1500-9705-94-9018-5768-8236;pass:END;sub:END;*/

Shader "KY/add_noise_texMask" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _noseTex ("noseTex", 2D) = "white" {}
        _emissive ("emissive", Float ) = 1
        _baseTexSpdX ("baseTexSpdX", Float ) = 0
        _baseTexSpdY ("baseTexSpdY", Float ) = 0
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
        _texMask ("texMask", 2D) = "white" {}
        _texMaskDensity ("texMaskDensity", Float ) = 1
        _texMaskPower ("texMaskPower", Float ) = 1
        _depthBlend ("depthBlend", Float ) = 1
        [MaterialToggle] _useDepthBlend ("useDepthBlend", Float ) = 0
        _rotNoiseTex ("rotNoiseTex", Float ) = 0
        [MaterialToggle] _correctEmissive ("correctEmissive", Float ) = 0
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
            uniform sampler2D _noseTex; uniform float4 _noseTex_ST;
            uniform float _emissive;
            uniform float _baseTexSpdX;
            uniform float _baseTexSpdY;
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
            uniform sampler2D _texMask; uniform float4 _texMask_ST;
            uniform float _texMaskDensity;
            uniform float _texMaskPower;
            uniform float _depthBlend;
            uniform fixed _useDepthBlend;
            uniform float _rotNoiseTex;
            uniform fixed _correctEmissive;
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
                float4 node_2775 = _Time + _TimeEditor;
                float2 node_2719 = (i.uv0+(float2(_baseTexSpdX,_baseTexSpdY)*node_2775.g)).rg;
                float node_7621_ang = _rotNoiseTex;
                float node_7621_spd = 1.0;
                float node_7621_cos = cos(node_7621_spd*node_7621_ang);
                float node_7621_sin = sin(node_7621_spd*node_7621_ang);
                float2 node_7621_piv = float2(0.5,0.5);
                float2 node_7621 = (mul((i.uv0+(node_2775.g*float2(_noiseTexSpdX,_noiseTexSpdY)))-node_7621_piv,float2x2( node_7621_cos, -node_7621_sin, node_7621_sin, node_7621_cos))+node_7621_piv);
                float4 _noseTex_var = tex2D(_noseTex,TRANSFORM_TEX(node_7621, _noseTex));
                float2 node_4689 = (float2(node_2719.r,pow(lerp( node_2719.g, (1.0 - node_2719.g), _compYInv ),_UVcompY))+(pow(_noseTex_var.r,_noiseDensity)*_noisePower));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_4689, _MainTex));
                float node_1076 = (_MainTex_var.r+_MainTex_var.g+_MainTex_var.b);
                float node_936 = (node_1076/3.0);
                float4 _texMask_var = tex2D(_texMask,TRANSFORM_TEX(i.uv0, _texMask));
                float3 emissive = (lerp( pow(lerp( saturate(node_1076), node_936, _correctEmissive ),_baseTexDensity), pow(_MainTex_var.rgb,_baseTexDensity), _useTexColor )*_emissive*i.vertexColor.rgb*((pow(lerp( node_936, _MainTex_var.a, _haveAlpha ),_alphaDensity)*_alphaPower)*i.vertexColor.a*saturate(pow((i.vertexColor.r+i.vertexColor.g+i.vertexColor.b),_vertColorDensity))*saturate((pow(_texMask_var.r,_texMaskDensity)*_texMaskPower))*lerp( 1.0, saturate((sceneZ-partZ)/_depthBlend), _useDepthBlend )));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
