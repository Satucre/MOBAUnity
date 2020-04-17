using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface IBuilding
{
    int GetHp();
    void SetHp(int hp);
    int GetMaxHp();
    bool IsAttacking();
    bool CanBeAttacked();
    void SetCanBeAttacked(bool value);
}
