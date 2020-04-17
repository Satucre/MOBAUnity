using Photon.Pun;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tower : IBuilding
{

    #region Fields
    private int hp;
    private readonly int maxhp;
    private readonly bool isattacking;
    private readonly int range;
    private readonly float attackspeed;
    private int damage;
    private bool canBeAttacked;
    #endregion

    #region Constructors
    public Tower(int maxhp)
    {
        isattacking = true;
        this.maxhp = maxhp;
        hp = maxhp;
        range = 200;
        damage = 175;
        attackspeed = 2.0f;
        canBeAttacked = false;
    }
    #endregion

    #region Setters/Getters
    public int GetRange()
    {
        return range;
    }

    public float GetAttackSpeed()
    {
        return attackspeed;
    }
    
    public int GetDamage()
    {
        return damage;
    }

    public int GetHp()
    {
        return hp;
    }

    public bool IsAttacking()
    {
        return isattacking;
    }

    public void SetHp(int hp)
    {
        this.hp = hp;
    }

    public void SetDamage(int damage)
    {
        this.damage = damage;
    }

    public int GetMaxHp()
    {
        return maxhp;
    }

    public bool CanBeAttacked()
    {
        return canBeAttacked;
    }

    public void SetCanBeAttacked (bool value)
    {
        canBeAttacked = value;
    }
    #endregion

}
