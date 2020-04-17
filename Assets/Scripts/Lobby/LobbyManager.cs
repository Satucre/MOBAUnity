using Photon.Pun;
using Photon.Realtime;
using UnityEngine;
using UnityEngine.SceneManagement;
using System.IO;
using System.Collections;

public class LobbyManager
{
    public static LobbyManager Instance { get; } = new LobbyManager();
    public LobbyManagerBehavior Behavior;
    public string InputUsername { get; set; }
    public GameObject playerObject;

    private LobbyManager()
    {
        Behavior = GameObject.FindGameObjectWithTag("LobbyManagerBehavior").GetComponent<LobbyManagerBehavior>();
    }
    
    /// <summary>
    /// Start the game
    /// </summary>
    public void StartGame(int sceneIndex)
    {
        if (PhotonNetwork.IsMasterClient)
        {
            Debug.Log("Starting game");
            PhotonNetwork.LoadLevel(sceneIndex);
        }
    }

    /// <summary>
    /// Creates a player
    /// </summary>
    public void CreatePlayer()
    {
        Debug.Log("Creating a player");
        playerObject = PhotonNetwork.Instantiate(Path.Combine("PlayerRes", "DeathPlayer"), new Vector3(0, 1, 0), Quaternion.identity);
        Behavior.CreateCamera(playerObject);
        Player player = new Player(InputUsername, 
            GameManager.Instance.Team1.Count >= GameConfig.MAX_PLAYERS_IN_TEAM ? TeamConfig.TEAM2 : TeamConfig.TEAM1);
        playerObject.GetComponent<PlayerController>().SetPlayer(player);
    }

    /// <summary>
    /// Connecting to the photon server
    /// </summary>
    /// <param name="username"></param>
    public void ConnectToServer(string username)
    {
        PhotonNetwork.OfflineMode = false;
        PhotonNetwork.NickName = username;
        PhotonNetwork.GameVersion = "V" + GameConfig.GAME_VERSION;
        PhotonNetwork.ConnectUsingSettings();
    }

    /// <summary>
    /// Connecting to the room
    /// </summary>
    public void ConnectToRoom()
    {
        if (!PhotonNetwork.IsConnected)
        {
            Debug.Log("Not connected to server.");
            return;
        }
        PhotonNetwork.JoinRandomRoom();
    }

    /// <summary>
    /// Creating the room
    /// </summary>
    /// <param name="maxPlayers"></param>
    public void CreateRoom(int maxPlayers)
    {
        Debug.Log("Currently creating the room.");
        RoomOptions roomOps = new RoomOptions() { IsVisible = true, IsOpen = true, MaxPlayers = (byte)maxPlayers };
        PhotonNetwork.CreateRoom(GameConfig.ROOM_NAME, roomOps);
    }

    /// <summary>
    /// Leave the room
    /// </summary>
    public void LeaveRoom()
    {
        PhotonNetwork.LeaveRoom();
    }

}