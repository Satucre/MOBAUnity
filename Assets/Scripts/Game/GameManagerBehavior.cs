using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManagerBehavior : MonoBehaviour
{

    public GameObject[] Team1BuildingsGameObjects = new GameObject[10];
    public GameObject[] Team2BuildingsGameObjects = new GameObject[10];

    // Start is called before the first frame update
    void Start()
    {
        LobbyManager.Instance.CreatePlayer();
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
