using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Minion : IEntity
{

    private int hp;
    private int xp;
    private int id;
    private bool isDead;
    private TeamConfig team;

    public Minion(int hp, int xp, int id, TeamConfig team)
    {
        this.hp = hp;
        this.xp = xp;
        this.id = id;
        this.team = team;
        isDead = false;
    }

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

    public void SetId(int id)
    {
        this.id = id;
    }

    public int GetId()
    {
        return id;
    }

    public void SetIsDead(bool value)
    {
        isDead = value;
    }

    public bool GetIsDead()
    {
        return isDead;
    }

}
