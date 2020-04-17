using Photon.Pun;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NexusBehaviour : MonoBehaviourPunCallbacks
{
    [SerializeField]
    private TowerConfig nexusId;
    [SerializeField]
    private TeamConfig nexusConfig;

    public Nexus NexusData { get; set; }
    public TeamConfig NexusConfig { get => nexusConfig; set => nexusConfig = value; }
    public TowerConfig NexusId { get => nexusId; set => nexusId = value; }
    public event Action<int, int> OnHealthChanged = delegate { };

    // Start is called before the first frame update
    void Start()
    {
        NexusData = nexusConfig == TeamConfig.TEAM1 ? 
            GameManager.Instance.Team1Buildings[(int)NexusId] as Nexus :
            GameManager.Instance.Team2Buildings[(int)NexusId] as Nexus;
        OnHealthChanged(NexusData.GetHp(), NexusData.GetMaxHp());
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void TriggerHit()
    {
        photonView.RPC("Hit", RpcTarget.All, 100);
    }

    [PunRPC]
    public void Hit(int value)
    {
        int newHp = NexusData.GetHp() - value;
        NexusData.SetHp(newHp <= 0 ? 0 : newHp);
        OnHealthChanged(NexusData.GetHp(), NexusData.GetMaxHp());
        Debug.Log("Nexus hp: " + NexusData.GetHp());
    }
}
