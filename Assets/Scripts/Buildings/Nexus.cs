using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Nexus : IBuilding
{
    #region Fields
    private int hp;
    private readonly int maxhp;
    private readonly bool isattacking;
    private readonly int regen;
    private bool canBeAttacked;
    #endregion

    #region Setters/Getters
    public int GetRegen()
    {
        return regen;
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

    #region Constructors
    public Nexus()
    {
        regen = 25;
        maxhp = 10000;
        SetHp(maxhp);
        isattacking = false;
        canBeAttacked = false;
    }
    #endregion

}
