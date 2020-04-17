using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuildingFactory : IBuildingFactory
{
    public Nexus CreateNexus()
    {
        return new Nexus();
    }

    public Tower CreateTower(int maxhp)
    {
        return new Tower(maxhp);
    }
}
