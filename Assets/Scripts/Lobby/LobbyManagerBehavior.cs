using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using Photon.Realtime;
using UnityEngine;
using UnityEngine.UI;

public class LobbyManagerBehavior : MonoBehaviourPunCallbacks
{

    [SerializeField]
    private InputField usernameField;
    [SerializeField]
    private GameObject startButton;
    [SerializeField]
    private GameObject cancelButton;
    [SerializeField]
    private GameObject loginButton;
    [SerializeField]
    private GameObject loadingButton;
    [SerializeField]
    private Text stateText;
    [SerializeField]
    private int roomSize;
    [SerializeField]
    private int multiplayerSceneIndex;
    [SerializeField]
    private GameObject cameraPrefab;
    private GameObject playerCamera;
    [SerializeField]
    private Text playersInLobbyText;
    [SerializeField]
    private Text[] lobbyPlayerPanelsTexts;

    private string[] stateTextsDisplay = new string[5];
    private int statePointer = 0;

    #region Button Clicks

    /// <summary>
    /// When the player clients on the login button
    /// </summary>
    public void LoginButtonClick()
    {
        //Alters button states
        loadingButton.SetActive(true);
        loginButton.SetActive(false);

        //check if input field for username is empty
        if (usernameField != null)
        {
            //if not empty, use the input
            if (usernameField.text != string.Empty)
            {
                LobbyManager.Instance.ConnectToServer(usernameField.text);
                LobbyManager.Instance.InputUsername = usernameField.text;
            }
            else
            {
                //if empty, use a default name
                int randomNumber = Random.Range(0, 25000);
                LobbyManager.Instance.ConnectToServer(GameConfig.DEFAULT_USERNAME + randomNumber);
                LobbyManager.Instance.InputUsername = GameConfig.DEFAULT_USERNAME + randomNumber;
            }
        }
    }

    /// <summary>
    /// When the player clicks the start button
    /// </summary>
    public void StartButtonClick()
    {
        //Alters button states
        startButton.SetActive(false);
        cancelButton.SetActive(true);

        LobbyManager.Instance.StartGame(multiplayerSceneIndex);
        UpdateStateText("Starting game...");
    }

    /// <summary>
    /// When the player clicks the cancel button
    /// </summary>
    public void CancelButtonClick ()
    {
        cancelButton.SetActive(false);
        startButton.SetActive(true);
        LobbyManager.Instance.LeaveRoom();
        Debug.Log("Left the room.");
        UpdateStateText("Left the room...");
    }

    #endregion

    #region Callbacks

    public override void OnEnable()
    {
        base.OnEnable();
        PhotonNetwork.AddCallbackTarget(this);
    }

    public override void OnDisable()
    {
        base.OnDisable();
        PhotonNetwork.RemoveCallbackTarget(this);
    }

    public override void OnJoinedRoom()
    {
        base.OnJoinedRoom();
        Debug.Log(LobbyManager.Instance.InputUsername + " connected to: " + PhotonNetwork.CurrentRoom.Name);
        Debug.Log("Server: " + PhotonNetwork.IsMasterClient + "  ~ Players in room: " + PhotonNetwork.CurrentRoom.PlayerCount + " ~ Room name: " + PhotonNetwork.CurrentRoom.Name);
        UpdateStateText("Succesfully connected to room...");
        ClearPlayersInLobbyUI();
        DisplayPlayersInLobbyUI();
    }

    public override void OnPlayerEnteredRoom(Photon.Realtime.Player newPlayer)
    {
        base.OnPlayerEnteredRoom(newPlayer);
        ClearPlayersInLobbyUI();
        DisplayPlayersInLobbyUI();
    }

    public override void OnPlayerLeftRoom(Photon.Realtime.Player otherPlayer)
    {
        base.OnPlayerLeftRoom(otherPlayer);
        ClearPlayersInLobbyUI();
        DisplayPlayersInLobbyUI();
    }

    public override void OnJoinRandomFailed(short returnCode, string message)
    {
        base.OnJoinRandomFailed(returnCode, message);
        Debug.Log("Failed to join the room, you're the first player. Creating the room.");
        LobbyManager.Instance.CreateRoom(roomSize);
        UpdateStateText("First one to join, creating the room...");
    }
    
    public override void OnDisconnected(DisconnectCause cause)
    {
        base.OnDisconnected(cause);
        Debug.Log(cause);
        ClearPlayersInLobbyUI();
        DisplayPlayersInLobbyUI();
        UpdateStateText("Disconnected...");

    }
    
    public override void OnConnectedToMaster()
    {
        base.OnConnectedToMaster();
        Debug.Log("Connected to server as: " + LobbyManager.Instance.InputUsername);
        startButton.SetActive(true);
        loadingButton.SetActive(false);
        PhotonNetwork.AutomaticallySyncScene = true;
        UpdateStateText("Succesfully connected to server...");
        //connect to the room
        LobbyManager.Instance.ConnectToRoom();
    }

    public override void OnCreateRoomFailed(short returnCode, string message)
    {
        base.OnCreateRoomFailed(returnCode, message);
        Debug.Log("Failed to create room... trying again.");
        LobbyManager.Instance.CreateRoom(roomSize);
        UpdateStateText("Failed to create the room... trying again...");
    }

    public override void OnCreatedRoom()
    {
        base.OnCreatedRoom();
        Debug.Log("Successfully created " + GameConfig.ROOM_NAME + ".");
        UpdateStateText("Succesfully created the room.");
    }

    #endregion

    #region Utility

    public void DisplayPlayersInLobbyUI ()
    {
        int index = 0;
        foreach (Photon.Realtime.Player player in PhotonNetwork.PlayerList)
        {
            lobbyPlayerPanelsTexts[index].transform.parent.gameObject.SetActive(true);
            lobbyPlayerPanelsTexts[index].text = player.NickName;
            index++;
        }
        playersInLobbyText.text = "Players in lobby: " + index;
    }

    public void ClearPlayersInLobbyUI()
    {
        for (int index = 0; index < lobbyPlayerPanelsTexts.Length; index++)
        {
            lobbyPlayerPanelsTexts[index].transform.parent.gameObject.SetActive(false);
        }
    }

    public void UpdateStateText(string message)
    {
        if (statePointer >= stateTextsDisplay.Length)
        {
            statePointer = 0;
        }
        stateTextsDisplay[statePointer] = "[" + System.DateTime.Now.Hour + ":" + System.DateTime.Now.Minute + "] " + message;
        string toDisplay = "";
        foreach (string state in stateTextsDisplay)
        {
            toDisplay += "\n" + state;
        }
        statePointer++;

        stateText.text = toDisplay;
    }

    /// <summary>
    /// Creates the player's camera
    /// </summary>
    public void CreateCamera (GameObject playerTarget)
    {
        GameObject playersCamera = GameObject.FindGameObjectWithTag("PlayerCameras");
        GameObject camera = Instantiate(cameraPrefab, playersCamera.transform);
        playerCamera = camera;
        playerCamera.GetComponent<PlayerCamera>().playerTarget = playerTarget.transform;
    }

    #endregion

}
