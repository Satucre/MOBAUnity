using Photon.Pun;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager
{
    public static GameManager Instance { get; } = new GameManager();
    public GameManagerBehavior GameManagerBehavior;
    public List<Player> Team1;
    public List<Player> Team2;
    public IBuilding[] Team1Buildings = new IBuilding[10];
    public IBuilding[] Team2Buildings = new IBuilding[10];
    public BuildingKills BuildingKillsSubject;

    private GameManager()
    {
        GameObject gm = GameObject.FindGameObjectWithTag("GameManagerBehavior");
        GameManagerBehavior = gm.GetComponent<GameManagerBehavior>();
        Team1 = new List<Player>();
        Team2 = new List<Player>();
        BuildingsInitialization();
    }

    private void BuildingsInitialization()
    {
        BuildingFactory factory = new BuildingFactory();
        BuildingKillsSubject = new BuildingKills();

        Team1Buildings[0] = factory.CreateNexus();
        Team2Buildings[0] = factory.CreateNexus();
        for (int index = 1; index < 10; index++)
        {
            if (index <= 3)
            {
                Team1Buildings[index] = factory.CreateTower(4500);
                Team2Buildings[index] = factory.CreateTower(4500);
            }
            else if (index >= 7)
            {
                Team1Buildings[index] = factory.CreateTower(3000);
                Team2Buildings[index] = factory.CreateTower(3000);
                Team1Buildings[index].SetCanBeAttacked(true);
                Team2Buildings[index].SetCanBeAttacked(true);
            }
            else
            {
                Team1Buildings[index] = factory.CreateTower(3000);
                Team2Buildings[index] = factory.CreateTower(3000);
            }
        }
    }

}
