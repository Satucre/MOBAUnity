using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuildingKills : Subject
{
    public override void Add(Observer o)
    {
        observers.Add(o);
    }

    #region Abstract states
    public override int GetState()
    {
        Debug.Log("Please use the GetState with tower values to get the state of this subject.");
        return 0;
    }

    public override void SetState(int value) { Debug.Log("Please use the SetState with tower values to set the state of this subject.");  }
    #endregion

    public bool GetState(TowerConfig towerId, TeamConfig towerTeam)
    {
        return towerTeam == TeamConfig.TEAM1 ? GameManager.Instance.Team1Buildings[(int)towerId].CanBeAttacked() :
            GameManager.Instance.Team2Buildings[(int)towerId].CanBeAttacked();
    }

    public void KillTower(TowerConfig towerId, TeamConfig towerTeam)
    {
        IBuilding buildingToChange = towerTeam == TeamConfig.TEAM1 ? GameManager.Instance.Team1Buildings[(int)towerId] :
            GameManager.Instance.Team2Buildings[(int)towerId];
        buildingToChange.SetCanBeAttacked(false);
        int id = ((int)towerId - 3) < 0 ? 0 : (int)towerId - 3;
        IBuilding newBuildingToAttack = towerTeam == TeamConfig.TEAM1 ? GameManager.Instance.Team1Buildings[id] :
            GameManager.Instance.Team2Buildings[id];
        newBuildingToAttack.SetCanBeAttacked(true);
    }
}
