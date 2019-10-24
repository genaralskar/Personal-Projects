using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoinPickup : Pickup
{
    protected override void OnPickUp(PlayerController player)
    {
        Debug.Log("Coin Picked Up!");
    }
}
