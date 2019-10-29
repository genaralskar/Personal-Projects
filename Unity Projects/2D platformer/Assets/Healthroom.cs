using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Healthroom : Pickup
{
    public int health = 2;

    protected override void OnPickUp(PlayerController player)
    {
        player.GetComponent<PlayerHealth>().Heal(health);
    }
}
