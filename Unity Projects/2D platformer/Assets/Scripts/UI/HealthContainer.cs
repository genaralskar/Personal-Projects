using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HealthContainer : MonoBehaviour
{
    public int maxHealth = 2;
    public int health = 2;
    public Image heart;

    public void SetHealth(int amount)
    {
        health = amount;
        float normalized = (float) amount / (float) maxHealth;
        Debug.Log("Normalized!");
        heart.fillAmount = normalized;
    }
}
