using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;
using Photon.Realtime;
using System.IO;
using UnityEngine.UI;

public class AbilityController : MonoBehaviour
{
    public List<Ability> abilities;
    private PhotonView view;
    private Text ability1Cdtext;
    private Text ability2Cdtext;
    private Text ability3Cdtext;

    public void StartAbilityAt(string ability, Vector3 pos, Quaternion rotation)
    {
        PhotonNetwork.Instantiate(Path.Combine("AbilityRes", ability), pos, rotation);
    }
    
    private void InitializeAbilities ()
    {
        abilities = new List<Ability>
        {
            new Ability("IceBarrage", (int)AbilityConfig.ICE_BARRAGE, 5.5f),
            new Ability("DeathBeam", (int)AbilityConfig.DEATH_BEAM, 5),
            new Ability("EnergyArrow", (int)AbilityConfig.ENERGY_ARROW, 25f),
            new Ability("HealAOE", (int)AbilityConfig.HEAL_AOE, 10f)
        };
    }

    // Start is called before the first frame update
    void Start()
    {
        InitializeAbilities();
        view = GetComponent<PhotonView>();
        ability1Cdtext = GameObject.Find("CooldownAbility1").GetComponent<Text>();
        ability2Cdtext = GameObject.Find("CooldownAbility2").GetComponent<Text>();
        ability3Cdtext = GameObject.Find("CooldownAbility3").GetComponent<Text>();
    }

    // Update is called once per frame
    void Update()
    {
        if (view.IsMine)
        {
            foreach (Ability ability in abilities)
            {
                if (ability.CurrentCooldown > 0)
                {
                    ability.CurrentCooldown -= Time.deltaTime;
                }
                else if (ability.CurrentCooldown < 0)
                {
                    ability.CurrentCooldown = 0;
                }
            }
            ability1Cdtext.text = $"{abilities[(int)AbilityConfig.ICE_BARRAGE].CurrentCooldown.ToString("#.##")}";
            ability2Cdtext.text = $"{abilities[(int)AbilityConfig.DEATH_BEAM].CurrentCooldown.ToString("#.##")}";
            ability3Cdtext.text = $"{abilities[(int)AbilityConfig.HEAL_AOE].CurrentCooldown.ToString("#.##")}";
        }
    }
}
