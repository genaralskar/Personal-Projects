using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetMaxHealth : Pickup
{
    public int newMaxHealth = 2;
    
    protected override void OnPickUp(PlayerController player)
    {
        PlayerHealth health = player.GetComponent<PlayerHealth>();

        health.SetMaxHealth(newMaxHealth);
    }
}
