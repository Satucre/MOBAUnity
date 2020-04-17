using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : IEntity
{
    #region Fields

    private string username;
    private TeamConfig team;
    private int hp;
    private int mana;
    private int xp;
    private int totalxp;
    private int level;
    private int cs;
    private int kills;
    private int deaths;
    private int assists;
    private float attackSpeed;
    private float currentCoolDown;
    private float distanceRequiredToAttack;
    private int damage;
    #endregion

    #region Constructors

    public Player()
    {
        username = "Player";
        hp = 0;
        xp = 0;
        attackSpeed = 2f;
        currentCoolDown = 0f;
        distanceRequiredToAttack = 2.5f;
        damage = 250;
    }
    
    public Player(string username, TeamConfig team)
    {
        this.username = username;
        this.team = team;
        hp = 0;
        mana = 0;
        xp = 0;
        kills = 0;
        deaths = 0;
        assists = 0;
        cs = 0;
        totalxp = 0;
        level = 1;
        attackSpeed = 2f;
        currentCoolDown = 0f;
        distanceRequiredToAttack = 2.5f;
        damage = 250;
    }

    #endregion

    #region Getters/Setters
    public int GetDamage()
    {
        return damage;
    }
    public void SetDamage(int damage)
    {
        this.damage = damage;
    }

    public string GetUsername ()
    {
        return username;
    }

    public void SetUsername(string username)
    {
        this.username = username;
    }

    public int GetAssists()
    {
        return assists;
    }

    public void SetAssists(int assists)
    {
        this.assists = assists;
    }

    public int GetDeaths()
    {
        return deaths;
    }

    public void SetDeaths(int deaths)
    {
        this.deaths = deaths;
    }

    public int GetKills()
    {
        return kills;
    }

    public void SetKills(int kills)
    {
        this.kills = kills;
    }

    public int GetCs()
    {
        return cs;
    }

    public void SetCs(int cs)
    {
        this.cs = cs;
    }

    public int GetLevel()
    {
        return level;
    }

    public void SetLevel(int level)
    {
        this.level = level;
    }

    public int GetTotalXp ()
    {
        return totalxp;
    }

    public void SetTotalXp(int totalxp)
    {
        this.totalxp = totalxp;
    }

    public int GetMana()
    {
        return mana;
    }

    public void SetMana(int mana)
    {
        this.mana = mana;
    }

    public TeamConfig GetTeam()
    {
        return team;
    }

    public void SetTeam(TeamConfig team)
    {
        this.team = team;
    }

    public int GetHp()
    {
        return hp;
    }

    public void SetHp(int hp)
    {
        this.hp = hp;
    }

    public int GetXp()
    {
        return xp;
    }

    public void SetXp(int xp)
    {
        this.xp = xp;
    }

    public void SetAttackSpeed(float speed)
    {
        this.attackSpeed = speed;
    }

    public float GetAttackSpeed()
    {
        return attackSpeed;
    }

    public void SetCurrentCooldown(float cd)
    {
        currentCoolDown = cd;
    }

    public float GetCurrentCooldown()
    {
        return currentCoolDown;
    }

    public void SetDistanceRequiredToAttack(float distance)
    {
        distanceRequiredToAttack = distance;
    }

    public float GetDistanceRequiredToAttack()
    {
        return distanceRequiredToAttack;
    }
    #endregion

}
