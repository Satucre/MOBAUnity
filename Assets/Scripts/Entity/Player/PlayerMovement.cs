using Photon.Pun;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

[RequireComponent(typeof(Rigidbody))]
[RequireComponent(typeof(CapsuleCollider))]
[RequireComponent(typeof(Animator))]
public class PlayerMovement : MonoBehaviour
{

    Rigidbody m_Rigidbody;
    Animator m_Animator;
    CapsuleCollider m_Capsule;
    NavMeshAgent agent;
    PhotonView view;
    PlayerController playerController;

    float extraRotationSpeed = 9.0f;

    // Start is called before the first frame update
    void Awake()
    {
        m_Rigidbody = GetComponent<Rigidbody>();
        m_Capsule = GetComponent<CapsuleCollider>();
        m_Animator = GetComponent<Animator>();
        agent = GetComponent<NavMeshAgent>();
        view = GetComponent<PhotonView>();
        playerController = GetComponent<PlayerController>();
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        if (view.IsMine)
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;

            if (Input.GetMouseButtonDown(1))
            {
                int layerMask = LayerMask.GetMask("Terrain", "Interactable");
                ray = Camera.main.ScreenPointToRay(Input.mousePosition);
                Physics.Raycast(ray, out hit, 500, layerMask);
                if (hit.transform)
                {
                    if (hit.transform.tag == "Interactable")
                    {
                        if (Vector3.Distance(hit.transform.position, gameObject.transform.position) <= playerController.GetPlayer().GetDistanceRequiredToAttack())
                        {
                            playerController.AutoAttack(hit.transform.gameObject);
                            gameObject.transform.LookAt(hit.transform);
                        }
                        else
                        {
                            agent.SetDestination(hit.point);
                        }
                    }
                    else
                    {
                        agent.SetDestination(hit.point);
                        playerController.MoveToEffect(hit.point);
                    }
                }
            }
            if (agent.hasPath)
            {
                UpdateMovement(true);
            }
            else
            {
                UpdateMovement(false);
            }
        }
    }

    void ExtraRotation()
    {
        if (agent.hasPath)
        {
            Vector3 lookRotation = agent.steeringTarget - transform.position;
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(lookRotation), extraRotationSpeed * Time.deltaTime);
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (view.IsMine)
        {
            ExtraRotation();
        }
    }

    public void UpdateMovement(bool isWalking)
    {
        m_Animator.SetBool("IsMoving", isWalking);
    }

}
