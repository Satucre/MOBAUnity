using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface IBuildingFactory
{
    Tower CreateTower(int maxhp);
    Nexus CreateNexus();
}
