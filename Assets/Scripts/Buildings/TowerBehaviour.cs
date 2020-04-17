using Photon.Pun;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TowerBehaviour : MonoBehaviourPunCallbacks
{
    [SerializeField]
    private TowerConfig towerId;
    [SerializeField]
    private TeamConfig towerConfig;

    public Tower TowerData { get; set; }
    public TeamConfig TowerConfig { get => towerConfig; set => towerConfig = value; }
    public TowerConfig TowerId { get => towerId; set => towerId = value; }
    public event Action<int, int> OnHealthChanged = delegate { };

    // Start is called before the first frame update
    void Start()
    {
        TowerData = towerConfig == TeamConfig.TEAM1 ? 
            GameManager.Instance.Team1Buildings[(int)TowerId] as Tower :
            GameManager.Instance.Team2Buildings[(int)TowerId] as Tower;
        OnHealthChanged(TowerData.GetHp(), TowerData.GetMaxHp());
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void TriggerHit(int damage)
    {
        photonView.RPC("Hit", RpcTarget.All, damage);
    }

    [PunRPC]
    public void Hit(int value)
    {
        int newHp = TowerData.GetHp() - value;
        TowerData.SetHp(newHp <= 0 ? 0 : newHp);
        OnHealthChanged(TowerData.GetHp(), TowerData.GetMaxHp());
        if (TowerData.GetHp() <= 0)
        {
            GameManager.Instance.BuildingKillsSubject.KillTower(TowerId, TowerConfig);
        }
    }
}
