using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuildingObserver : Observer
{
    Tower tower;

    public BuildingObserver(BuildingKills subject, Tower tower)
    {
        this.subject = subject;
        this.subject.Add(this);
        this.tower = tower;
    }

    public override void UpdateState()
    {
        tower.SetCanBeAttacked(false);
    }

    public void UpdateState(bool value)
    {
        tower.SetCanBeAttacked(value);
    }
}
