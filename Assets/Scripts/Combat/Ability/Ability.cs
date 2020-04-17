using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[Serializable]
public class Ability
{
    public string Name { get; set; }
    public int Id { get; set; }
    public float Cooldown { get; set; }
    public float CurrentCooldown { get; set; }

    public Ability(string name, int id, float cooldown)
    {
        Name = name;
        Id = id;
        Cooldown = cooldown;
        CurrentCooldown = 0f;
    }
}
