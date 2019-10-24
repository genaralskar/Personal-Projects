using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JumpPickup : Pickup
{
    public int extraJumps = 1;
    
    protected override void OnPickUp(PlayerController player)
    {
        player.jumpAmount += extraJumps;
    }
}
