using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PotionIndicatorManager : MonoBehaviour
{
    private PotionInventory potInv;

    public List<PotionIndicator> pots;

    private void Awake()
    {
        potInv = FindObjectOfType<PotionInventory>();
        potInv.PotionFilled += PotionFilledHandler;
        potInv.PotionEmptied += PotionEmptiedHandler;
        potInv.PotionAddedActive += PotionAddedActiveHandler;
    }

    private void PotionFilledHandler()
    {
        UpdatePotionFills();
    }

    private void PotionEmptiedHandler()
    {
        UpdatePotionFills();
    }

    private void PotionAddedActiveHandler()
    {
        UpdateActivePotions();
    }

    private void UpdateActivePotions()
    {
        for (int i = 0; i < pots.Count; i++)
        {
            pots[i].gameObject.SetActive(i < potInv.ActivePotions);
        }
    }

    private void UpdatePotionFills()
    {
        for (int i = 0; i < pots.Count; i++)
        {
            pots[i].SetFull(i < potInv.FilledPotions);
        }
    }
}
