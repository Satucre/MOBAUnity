using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerCamera : MonoBehaviour
{

    public Transform playerTarget;
    public float xOffset = 5;
    public float yOffset = 8;

    // Update is called once per frame
    void Update()
    {
        transform.position = new Vector3(playerTarget.position.x - xOffset, yOffset, playerTarget.position.z);
    }
}
