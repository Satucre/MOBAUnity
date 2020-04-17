using Photon.Pun;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

public class GameManagerBehavior : MonoBehaviour
{

    public GameObject[] Team1BuildingsGameObjects = new GameObject[10];
    public GameObject[] Team2BuildingsGameObjects = new GameObject[10];
    Vector3 spawnPointBlue = new Vector3(18, 1, -22);
    Vector3 spawnPointRed = new Vector3(-18, 1, 20);

    // Start is called before the first frame update
    void Awake()
    {
        LobbyManager.Instance.CreatePlayer();
        SpawnMinions();
    }

    IEnumerator SpawnMinionBlue(int id, float delay)
    {
        yield return new WaitForSeconds(delay);
        GameObject minion = PhotonNetwork.Instantiate(Path.Combine("MinionRes", "MinionBlue"), spawnPointBlue, Quaternion.identity);
        Minion minionData = new Minion(750, 5, id, TeamConfig.TEAM2);
        minion.GetComponent<MinionController>().data = minionData;
        GameManager.Instance.Team1Minions.Add(minionData);
        yield return null;
    }

    IEnumerator SpawnMinionRed(int id, float delay)
    {
        yield return new WaitForSeconds(delay);
        GameObject minion = PhotonNetwork.Instantiate(Path.Combine("MinionRes", "MinionRed"), spawnPointRed, Quaternion.identity);
        Minion minionData = new Minion(750, 5, id, TeamConfig.TEAM1);
        minion.GetComponent<MinionController>().data = minionData;
        GameManager.Instance.Team2Minions.Add(minionData);
        yield return null;
    }

    /// <summary>
    /// Spawn the minions
    /// </summary>
    public void SpawnMinions()
    {
        Debug.Log("Creating minions");
        for (int index = 0; index < 5; index++)
        {
            StartCoroutine(SpawnMinionBlue(index, index * 3));
            StartCoroutine(SpawnMinionRed(index, index * 3));
        }
    
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
