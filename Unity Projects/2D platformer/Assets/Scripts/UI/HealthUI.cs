using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HealthUI : MonoBehaviour
{
    public GameObject healthContainer;
    public int healthPerHeart = 2;

    private List<HealthContainer> containers;

    private void Awake()
    {
        int amount = PlayerHealth.maxHealth / healthPerHeart;
        if (amount % healthPerHeart != 0)
        {
            amount++;
        }
        
        containers = new List<HealthContainer>();

        for (int i = 0; i < amount; i++)
        {
            GameObject heart = Instantiate(healthContainer, transform);
            containers.Add(heart.GetComponent<HealthContainer>());
            containers[i].maxHealth = healthPerHeart;
        }

        PlayerHealth.HealthUpdated += UpdateHealthHandler;
        
        UpdateHealthHandler();
    }

    private void UpdateHealthHandler()
    {   
        Debug.Log("Update Health UI");
        
        //current health
        int currentHealth = PlayerHealth.currentHealth;
        //health / 2 gets container number << not quite
        int container = currentHealth / healthPerHeart;
        int healthMod = currentHealth % healthPerHeart;
//        if (healthMod != 2)
//        {
//            container += 1;
//        }
//        
//        Debug.Log($"Container = {container}");
        
        //health % 2 gets full or half
//        for (int i = 0; i < container; i++)
//        {
//            if (i == container)
//            {
//                containers[i].SetHealth(healthMod);
//                return;
//            }
//            containers[i].SetHealth(healthPerHeart);
//        }

        int health = currentHealth;
        
        foreach (var cont in containers)
        {
            if (health < healthPerHeart)
            {
                cont.SetHealth(health);
                return;
            }
            cont.SetHealth(healthPerHeart);
            health -= healthPerHeart;
        }
    }
}
