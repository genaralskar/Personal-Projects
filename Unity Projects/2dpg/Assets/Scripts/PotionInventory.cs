using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[RequireComponent(typeof(PlayerInputs))]
[RequireComponent(typeof(Health))]
public class PotionInventory : MonoBehaviour
{
    private PlayerInputs inputs;
    private Health health;

    private int maxPotions = 4;

    private int activePotions;
    public int ActivePotions => activePotions;

    private int filledPotions;
    public int FilledPotions => filledPotions;

    public UnityAction PotionFilled;
    public UnityAction PotionEmptied;
    public UnityAction PotionAddedActive;

    private void Awake()
    {
        inputs = GetComponent<PlayerInputs>();
        health = GetComponent<Health>();
    }

    [ContextMenu("Fill Potion")]
    public void PotionFill()
    {
        filledPotions++;
        PotionFilled?.Invoke();
    }

    [ContextMenu("Add Potion")]
    public void PotionAddActive()
    {
        if(activePotions < maxPotions)
        {
            activePotions++;
            PotionAddedActive?.Invoke();
            filledPotions++;
            PotionFilled?.Invoke();
        }
    }

    [ContextMenu("Use Potion")]
    public void PotionUse()
    {
        if(filledPotions > 0)
        {
            health.ModifyHealth(50);
            filledPotions--;
            PotionEmptied?.Invoke();
        }
    }

    
}
