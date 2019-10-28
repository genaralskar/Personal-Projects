using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetMaxJumps : Pickup
{
    public int newMaxJumps = 1;
    
    protected override void OnPickUp(PlayerController player)
    {
        player.maxJumps = newMaxJumps;
        player.jumpAmount += newMaxJumps;
    }
    
}
