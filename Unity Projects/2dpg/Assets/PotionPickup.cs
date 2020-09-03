using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PotionPickup : MonoBehaviour
{
    private PotionInventory inv;

    private void Awake()
    {
        inv = FindObjectOfType<PotionInventory>();
    }

    public void Pickup()
    {
        inv.PotionAddActive();
    }
}
