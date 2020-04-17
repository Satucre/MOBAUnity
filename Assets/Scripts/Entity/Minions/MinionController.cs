using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class MinionController : MonoBehaviour
{
    readonly Vector3[] wayPointsBlue = new Vector3[3] { new Vector3(12, 1, -17), new Vector3(7, 1, -8), new Vector3(0, 1, -2) };
    readonly Vector3[] wayPointsRed = new Vector3[3] { new Vector3(-13, 1, 13), new Vector3(-7.5f, 1, 5), new Vector3(-1.1f, 1, 0.6f) };
    readonly Vector3[] endPointsBlue = new Vector3[5] { new Vector3(-0.75f, 1, -3.25f), new Vector3(0.5f, 1, -2f), new Vector3(2, 1, -0.5f), new Vector3(2, 1, -4.5f), new Vector3(3, 1, -3) };
    readonly Vector3[] endPointsRed = new Vector3[5] { new Vector3(-3, 1, -1), new Vector3(-1.5f, 1, 0.5f), new Vector3(-0.35f, 1, 2), new Vector3(-3.5f, 1, 1), new Vector3(-2, 1, 3) };
    public Minion data;
    NavMeshAgent agent;
    Animator animator;
    Transform minionTarget;
    bool walkedFromSpawn;
    private readonly float lookRadius = 10f;
    private float attackCooldown = 2f;
    private float currentCooldown = 2f;

    public void AttackMinion(int damage)
    {
        if (data.GetHp() > damage)
        {
            data.SetHp(data.GetHp() - damage);
        }
        else
        {
            StartCoroutine(MinionDeath());
        }
    }

    IEnumerator MinionDeath()
    {
        animator.SetTrigger("dead");
        data.SetIsDead(true);
        if(data.GetTeam() == TeamConfig.TEAM1)
        {
            GameManager.Instance.Team1Minions.Remove(this);
        }
        else
        {
            GameManager.Instance.Team2Minions.Remove(this);
        }
        yield return new WaitForSeconds(3);
        Destroy(gameObject);
    }

    // Start is called before the first frame update
    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        animator = GetComponent<Animator>();
        walkedFromSpawn = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (minionTarget == null && !agent.hasPath)
        {
            if (data.GetTeam() == TeamConfig.TEAM1)
            {
                minionTarget = GameManager.Instance.Team2Minions[Random.Range(0, GameManager.Instance.Team2Minions.Count)].transform;
            }
            else
            {
                minionTarget = GameManager.Instance.Team1Minions[Random.Range(0, GameManager.Instance.Team1Minions.Count)].transform;
            }
        }

        if (data.GetTeam() == TeamConfig.TEAM2  && walkedFromSpawn == false)
        {
            agent.SetDestination(endPointsBlue[data.GetId()]);
            walkedFromSpawn = true;
        } 
        else if (data.GetTeam() == TeamConfig.TEAM1 && walkedFromSpawn == false)
        {
            agent.SetDestination(endPointsRed[data.GetId()]);
            walkedFromSpawn = true;
        }
        else if (minionTarget != null)
        {
            float distance = Vector3.Distance(minionTarget.position, transform.position);
            if (distance <= lookRadius)
            {
                agent.SetDestination(minionTarget.position);
                if (distance <= agent.stoppingDistance)
                {
                    agent.isStopped = true;
                    agent.ResetPath();
                    if (!minionTarget.GetComponent<MinionController>().data.GetIsDead())
                    {
                        if (currentCooldown <= 0)
                        {
                            animator.SetTrigger("attack");
                            transform.LookAt(minionTarget);
                            minionTarget.GetComponent<MinionController>().AttackMinion(Random.Range(0, 85));
                            currentCooldown = attackCooldown;
                        }
                    }
                    else
                    {
                        minionTarget = null;
                    }
                }
            }
        }

        if (agent.hasPath)
        {
            animator.SetBool("walking", true);
        }
        else
        {
            animator.SetBool("walking", false);
        }
        
        if(currentCooldown > 0)
        {
            currentCooldown -= Time.deltaTime;
        }
    }
}
