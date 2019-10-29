using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class PlayerHealth : MonoBehaviour
{
    public static int currentHealth = 2;
    public static int maxHealth = 2;

    private bool invicible = false;
    private SpriteRenderer rend;

    public static UnityAction HealthUpdated;
    
    private void Awake()
    {
        rend = GetComponent<SpriteRenderer>();
        Checkpoint.Respawn += RespawnHandler;
    }

    public void ChangeHealth(int amount)
    {
        currentHealth += amount;

        if (currentHealth <= 0)
        {
            PlayerController.Death?.Invoke(gameObject);
            currentHealth = 0;
        }
        else if(amount < 1)
        {
            StopCoroutine(InvincibilityFrames());
            StartCoroutine(InvincibilityFrames());
            //bounce player

        }
        else if (currentHealth > maxHealth)
        {
            currentHealth = maxHealth;
        }
        
        HealthUpdated?.Invoke();
    }

    public void Damage(int amount)
    {
        ChangeHealth(-amount);
    }

    public void Heal(int amount)
    {
        ChangeHealth(amount);
    }

    private IEnumerator InvincibilityFrames()
    {
        invicible = true;
        int flashes = 4;
        float flashTime = .1f;
        for (int i = 0; i < flashes; i++)
        {
            rend.enabled = false;
            yield return new WaitForSeconds(flashTime);
            rend.enabled = true;
            yield return new WaitForSeconds(flashTime);
        }

        invicible = false;
    }

    private void RespawnHandler(GameObject player)
    {
        ChangeHealth(maxHealth);
    }
}
