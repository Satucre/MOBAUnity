using UnityEngine;
using System.Collections;

public class ConGUI : MonoBehaviour {

public Transform mainCamera;
public Transform cameraTrs;
public int rotSpeed = 20;
public GameObject[] effectObj;
public GameObject[] effectObProj;
public Light lightObj;
private int arrayNo = 0;

private GameObject nowEffectObj;
private string[] cameraState = {"Camera move" ,"Camera stop"};
private int cameraRotCon = 0;

private float num = 0F;
private float numBck = 0F;
private Vector3 initPos;

private float lightPower = 0;
private float lightPowerBck = 0;

private bool  haveProFlg = false;
private GameObject nonProFX;

private Vector3 tmpPos;

bool visibleBt (){
	 foreach(GameObject tmpObj in effectObProj){
		if( effectObj[ arrayNo ].name == tmpObj.name){
			nonProFX = tmpObj;
			return true;
		}
	}
	return false;
}

void Start (){
	tmpPos = initPos = mainCamera.localPosition;
	lightPower = lightObj.intensity;//0;//light.intensity;

	haveProFlg = visibleBt();
}

void Update (){
	if( cameraRotCon == 1)cameraTrs.Rotate(0 ,rotSpeed * Time.deltaTime ,0);
	lightObj.intensity = lightPower;
	if(num > numBck){
		numBck = num;
			tmpPos.y += 0.05f;
			tmpPos.z -= 0.3f;
		
	}else if(num < numBck){
		numBck = num;
			tmpPos.y -= 0.05f;
			tmpPos.z += 0.3f;
	}else if(num == 0){
			tmpPos.y = initPos.y;
			tmpPos.z = initPos.z;
	}
	
		if(tmpPos.y < initPos.y )tmpPos.y = initPos.y;
		if(tmpPos.z > initPos.z )tmpPos.z = initPos.z;

		mainCamera.localPosition = tmpPos;
}

void OnGUI (){
		
	if (GUI.Button ( new Rect(0, 0, Screen.width/10, Screen.height/10), "pre")) {//return Rect(20, 0, 30, 30
		arrayNo --;
		if(arrayNo < 0)arrayNo = effectObj.Length -1;
		effectOn();
		
		haveProFlg = visibleBt();
	}
	
	if (GUI.Button ( new Rect(Screen.width/10, 0, Screen.width/3, Screen.height/10), effectObj[ arrayNo ].name )) {//Rect(50, 0, 200, 30
		effectOn();
	}
	
	if (GUI.Button ( new Rect(Screen.width/10 + Screen.width/3, 0, Screen.width/10, Screen.height/10), "next")) {//next Rect(250, 0, 30, 30
		arrayNo ++;
		if(arrayNo >= effectObj.Length)arrayNo = 0;
		effectOn();
		
		haveProFlg = visibleBt();
	}
	
	if( haveProFlg ){
		if (GUI.Button ( new Rect(50, 30, 300, 70), "+Distorsion" )) {
			if(nowEffectObj != null)Destroy( nowEffectObj );
			nowEffectObj = Instantiate( nonProFX );
		}
	}
	
	
	if (GUI.Button ( new Rect(Screen.width/4 + Screen.width/3, 0, Screen.width/6, Screen.height/10), cameraState[ cameraRotCon ] )) {//Rect(300, 0, 200, 30
		if( cameraRotCon == 1){
			cameraRotCon = 0;
		}else{
			cameraRotCon = 1;
		}
	}
	
	num = GUI.VerticalSlider( new Rect(Screen.width/30, Screen.height/4, Screen.width/30, Screen.height/2), num, 0, 20);//Rect(30, 100, 20, 200
	
	lightPower = GUI.VerticalSlider( new Rect(Screen.width/30 + Screen.width/25, Screen.height/4, Screen.width/30, Screen.height/2), lightPower, 0, 1.5f);//Rect(50, 100, 20, 200
}

void effectOn (){
	if(nowEffectObj != null)Destroy( nowEffectObj );
	nowEffectObj = Instantiate(effectObj[ arrayNo ] );
}
}