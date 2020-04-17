using Photon.Pun;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{

    [SerializeField]
    private GameObject moveEffectPrefab;
    private AbilityController abilityController;
    private PhotonView view;
    private Animator animator;
    private Player playerData;

    public void SetPlayer(Player player)
    {
        playerData = player;
    }

    public Player GetPlayer()
    {
        return playerData;
    }

    // Start is called before the first frame update
    void Start()
    {
        abilityController = GetComponent<AbilityController>();
        view = GetComponent<PhotonView>();
        animator = GetComponent<Animator>();
    }

    /// <summary>
    /// Spawns the click effect where the player clicked on the map to move
    /// </summary>
    /// <param name="position"></param>
    public void MoveToEffect(Vector3 position)
    {
        Instantiate(moveEffectPrefab, position, Quaternion.identity);
    }

    // Update is called once per frame
    void Update()
    {
        if (view.IsMine)
        {
            if (Input.GetKeyDown(KeyCode.Q))
            {
                Ability ability = abilityController.abilities[(int)AbilityConfig.ICE_BARRAGE];
                if (ability.CurrentCooldown <= 0f)
                {
                    Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
                    Physics.Raycast(ray, out RaycastHit hit);
                    if (hit.transform)
                    {
                        StartCoroutine(CastAbility(ability.Name, hit.point, Quaternion.identity, 1));
                        animator.SetTrigger("IsDoingAbility1");
                        ability.CurrentCooldown = ability.Cooldown;
                    }
                }
            }
            if (Input.GetKeyDown(KeyCode.W))
            {
                Ability ability = abilityController.abilities[(int)AbilityConfig.DEATH_BEAM];
                if (ability.CurrentCooldown <= 0f)
                {
                    Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
                    Physics.Raycast(ray, out RaycastHit hit);
                    if (hit.transform)
                    {
                        StartCoroutine(CastAbility(ability.Name, hit.point, Quaternion.identity, 1));
                        animator.SetTrigger("IsDoingAbility2");
                        ability.CurrentCooldown = ability.Cooldown;
                    }
                }
            }
            if (Input.GetKeyDown(KeyCode.E))
            {
                Ability ability = abilityController.abilities[(int)AbilityConfig.HEAL_AOE];
                if (ability.CurrentCooldown <= 0f)
                {
                    Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
                    Physics.Raycast(ray, out RaycastHit hit);
                    if (hit.transform)
                    {
                        StartCoroutine(CastAbility(ability.Name, new Vector3(transform.position.x, transform.position.y + 0.1f, transform.position.z), Quaternion.identity, 0));
                        animator.SetTrigger("IsDoingAbility3");
                        ability.CurrentCooldown = ability.Cooldown;
                    }
                }
            }
            if (playerData.GetCurrentCooldown() < 0)
            {
                playerData.SetCurrentCooldown(0f);
            }
            else
            {
                playerData.SetCurrentCooldown(playerData.GetCurrentCooldown() - Time.deltaTime);
            }
        }
    }

    IEnumerator CastAbility(string name, Vector3 position, Quaternion rotation, float delay)
    {
        yield return new WaitForSeconds(delay);
        abilityController.StartAbilityAt(name, position, rotation);
        yield return null;
    }
    
    public void AutoAttack(GameObject objectToAttack)
    {
        if (playerData.GetCurrentCooldown() <= 0f)
        {
            TowerBehaviour tower = objectToAttack.GetComponentInParent<TowerBehaviour>();
            NexusBehaviour nexus = objectToAttack.GetComponentInParent<NexusBehaviour>();
            MinionController minion = objectToAttack.GetComponentInParent<MinionController>();
            if (tower != null)
            {
                if (!tower.TowerData.CanBeAttacked())
                {
                    return;
                }
                if (tower.TowerConfig == playerData.GetTeam())
                {
                    return;
                }
                tower.TriggerHit(GetPlayer().GetDamage());
                playerData.SetCurrentCooldown(playerData.GetAttackSpeed());
                animator.SetTrigger("IsDoingAutoAttack");
            }
            else if (nexus != null)
            {
                if (!nexus.NexusData.CanBeAttacked())
                {
                    return;
                }
                if (nexus.NexusConfig == playerData.GetTeam())
                {
                    return;
                }
                nexus.TriggerHit(GetPlayer().GetDamage());
                playerData.SetCurrentCooldown(playerData.GetAttackSpeed());
                animator.SetTrigger("IsDoingAutoAttack");
            }
            else if (minion != null)
            {
                if (!minion.data.GetIsDead())
                {
                    if (minion.data.GetTeam() == playerData.GetTeam())
                    {
                        return;
                    }
                    if (minion.data.GetHp() - GetPlayer().GetDamage() <= 0)
                    {
                        //XP ETC
                    }
                    minion.AttackMinion(GetPlayer().GetDamage());
                    playerData.SetCurrentCooldown(playerData.GetAttackSpeed());
                    animator.SetTrigger("IsDoingAutoAttack");
                }
            }
        }
    }

}
