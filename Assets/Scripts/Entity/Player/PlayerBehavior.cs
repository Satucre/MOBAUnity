using UnityEngine;
using System.IO;
using Photon.Pun;
using UnityEngine.AI;

[RequireComponent(typeof(PlayerMovement))]
public class PlayerBehavior : MonoBehaviour
{

    private PhotonView view;
    private NavMeshAgent agent;
    private Transform m_Cam;       

    // Start is called before the first frame update
    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        view = GetComponent<PhotonView>();

        // get the transform of the main camera
        if (Camera.main != null)
        {
            m_Cam = Camera.main.transform;
        }
    }

    /// <summary>
    /// Checks if its the current players view for updating
    /// </summary>
    /// <returns></returns>
    public bool IsMyView()
    {
        return view.IsMine;
    }

}
