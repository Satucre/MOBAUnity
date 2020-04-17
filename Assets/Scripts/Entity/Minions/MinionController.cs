using System;
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
    Transform target;
    bool walkedFromSpawn;
    private readonly float lookRadius = 20f;
    private float attackCooldown = 2f;
    private float currentCooldown = 2f;
    public event Action<int, int> OnHealthChanged = delegate { };
    private bool isAttackingBuilding;
    private float buildingAttackRange = 2.5f;

    public void AttackMinion(int damage)
    {
        if (data.GetHp() > damage)
        {
            data.SetHp(data.GetHp() - damage);
            OnHealthChanged(data.GetHp(), data.GetMaxHp());
        }
        else
        {
            data.SetHp(0);
            StartCoroutine(MinionDeath());
            OnHealthChanged(data.GetHp(), data.GetMaxHp());
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
        OnHealthChanged(data.GetHp(), data.GetMaxHp());
        isAttackingBuilding = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (target == null)
        {
            if (data.GetTeam() == TeamConfig.TEAM1)
            {
                if (GameManager.Instance.Team2Minions.Count > 0)
                {
                    target = GameManager.Instance.Team2Minions[UnityEngine.Random.Range(0, GameManager.Instance.Team2Minions.Count - 1)].transform;
                    isAttackingBuilding = false;
                } 
                else
                {
                    agent.isStopped = true;
                    agent.ResetPath();
                    int index = 0;
                    foreach(IBuilding building in GameManager.Instance.Team2Buildings)
                    {
                        if (building.CanBeAttacked())
                        {
                            Transform buildingTransform = GameManager.Instance.GameManagerBehavior.Team2BuildingsGameObjects[index].transform;
                            float distance = Vector3.Distance(transform.position, buildingTransform.position);
                            if (distance <= lookRadius)
                            {
                                target = buildingTransform;
                                isAttackingBuilding = true;
                            }
                        }
                        index++;
                    }
                }
            }
            else
            {
                if (GameManager.Instance.Team1Minions.Count > 0)
                {
                    target = GameManager.Instance.Team1Minions[UnityEngine.Random.Range(0, GameManager.Instance.Team1Minions.Count - 1)].transform;
                    isAttackingBuilding = false;
                }
                else
                {
                    agent.isStopped = true;
                    agent.ResetPath();
                    int index = 0;
                    foreach (IBuilding building in GameManager.Instance.Team1Buildings)
                    {
                        if (building.CanBeAttacked())
                        {
                            Transform buildingTransform = GameManager.Instance.GameManagerBehavior.Team1BuildingsGameObjects[index].transform;
                            float distance = Vector3.Distance(transform.position, buildingTransform.position);
                            if (distance <= lookRadius)
                            {
                                target = buildingTransform;
                                isAttackingBuilding = true;
                            }
                        }
                        index++;
                    }
                }
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
        else if (target != null)
        {
            float distance = Vector3.Distance(target.position, transform.position);
            if (distance <= lookRadius || isAttackingBuilding)
            {
                agent.SetDestination(target.position);
                if (distance <= agent.stoppingDistance || (isAttackingBuilding && distance <= buildingAttackRange))
                {
                    agent.isStopped = true;
                    agent.ResetPath();
                    MinionController minionTarget = target.GetComponent<MinionController>();
                    TowerBehaviour tower = target.GetComponentInParent<TowerBehaviour>();
                    NexusBehaviour nexus = target.GetComponentInParent<NexusBehaviour>();
                    if (minionTarget != null && !minionTarget.data.GetIsDead())
                    {
                        if (currentCooldown <= 0 && !data.GetIsDead())
                        {
                            animator.SetTrigger("attack");
                            transform.LookAt(target);
                            minionTarget.AttackMinion(UnityEngine.Random.Range(0, 85));
                            currentCooldown = attackCooldown;
                        }
                    }
                    else if (tower != null)
                    {
                        if (!tower.TowerData.CanBeAttacked())
                        {
                            target = null;
                            return;
                        }
                        if (tower.TowerConfig == data.GetTeam())
                        {
                            target = null;
                            return;
                        }
                        if (currentCooldown <= 0 && !data.GetIsDead())
                        {
                            tower.TriggerHit(UnityEngine.Random.Range(0, 85));
                            animator.SetTrigger("attack");
                            transform.LookAt(target);
                            currentCooldown = attackCooldown;
                        }
                    }
                    else if (nexus != null)
                    {
                        if (!nexus.NexusData.CanBeAttacked())
                        {
                            target = null;
                            return;
                        }
                        if (nexus.NexusConfig == data.GetTeam())
                        {
                            target = null;
                            return;
                        }
                        if (currentCooldown <= 0 && !data.GetIsDead())
                        {
                            nexus.TriggerHit(UnityEngine.Random.Range(0, 85));
                            animator.SetTrigger("attack");
                            transform.LookAt(target);
                            currentCooldown = attackCooldown;
                        }
                    }
                    else
                    {
                        target = null;
                        isAttackingBuilding = false;
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
