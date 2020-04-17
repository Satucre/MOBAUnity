using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface IEntity
{
    TeamConfig GetTeam();
    void SetTeam(TeamConfig team);
    int GetHp();
    void SetHp(int hp);
    int GetXp();
    void SetXp(int xp);
}
