using UnityEngine;
using System.Collections;

public class ThisDestroy : MonoBehaviour {

public float time = 1;
void Start (){
	Destroy(this.gameObject ,time);
	this.enabled = false;
}

void Update (){

}
}