using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Minion : IEntity
{

    private int hp;
    private int xp;
    private TeamConfig team;

    public int GetHp()
    {
        return hp;
    }

    public TeamConfig GetTeam()
    {
        return team;
    }

    public int GetXp()
    {
        return xp;
    }

    public void SetHp(int hp)
    {
        this.hp = hp;
    }

    public void SetTeam(TeamConfig team)
    {
        this.team = team;
    }

    public void SetXp(int xp)
    {
        this.xp = xp;
    }
}
