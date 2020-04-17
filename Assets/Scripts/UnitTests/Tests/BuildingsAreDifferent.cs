using System.Collections;
using System.Collections.Generic;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.TestTools;

public class BuildingsAreDifferent
{
    [Test]
    public void NexusAreDifferentPasses()
    {
        GameObject[] buildings = GameObject.FindGameObjectsWithTag("Interactable");
        GameObject team1Nexus = null;
        GameObject team2Nexus = null;
        foreach (GameObject go in buildings)
        {
            if (go.name == "Team1Nexus")
            {
                team1Nexus = go;
            }
            if (go.name == "Team2Nexus")
            {
                team2Nexus = go;
            }
        }
        Assert.AreNotEqual(team1Nexus, team2Nexus);
    }

    [Test]
    public void TowersAreDifferentPasses()
    {
        GameObject[] buildings = GameObject.FindGameObjectsWithTag("Interactable");
        GameObject[] team1Towers = new GameObject[9];
        GameObject[] team2Towers = new GameObject[9];
        foreach (GameObject go in buildings)
        {
            switch (go.name)
            {
                case "Team1NexusTowerTop":
                    team1Towers[0] = go;
                    break;
                case "Team2NexusTowerTop":
                    team2Towers[0] = go;
                    break;
                case "Team1NexusTowerMid":
                    team1Towers[1] = go;
                    break;
                case "Team2NexusTowerMid":
                    team2Towers[1] = go;
                    break;
                case "Team1NexusTowerBot":
                    team1Towers[2] = go;
                    break;
                case "Team2NexusTowerBot":
                    team2Towers[2] = go;
                    break;
                case "Team1MiddleTower1":
                    team1Towers[3] = go;
                    break;
                case "Team2MiddleTower1":
                    team2Towers[3] = go;
                    break;
                case "Team1TopTower1":
                    team1Towers[4] = go;
                    break;
                case "Team2TopTower1":
                    team2Towers[4] = go;
                    break;
                case "Team1BotTower1":
                    team1Towers[5] = go;
                    break;
                case "Team2BotTower1":
                    team2Towers[5] = go;
                    break;
                case "Team1MiddleTower2":
                    team1Towers[6] = go;
                    break;
                case "Team2MiddleTower2":
                    team2Towers[6] = go;
                    break;
                case "Team1TopTower2":
                    team1Towers[7] = go;
                    break;
                case "Team2TopTower2":
                    team2Towers[7] = go;
                    break;
                case "Team1BotTower2":
                    team1Towers[8] = go;
                    break;
                case "Team2BotTower2":
                    team2Towers[8] = go;
                    break;
            }
        }
        for (int index = 0; index < 9; index++)
        {
            Assert.AreNotEqual(team1Towers[index], team2Towers[index]);
        }
    }
}
