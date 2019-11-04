using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HealthUI : MonoBehaviour
{
    public GameObject healthContainer;
    public int healthPerHeart = 2;
    
    private List<HealthContainer> containers = new List<HealthContainer>();
    private int currentHealth = -1;

    private void Awake()
    {
        int amount = PlayerHealth.maxHealth / healthPerHeart;
        if (amount % healthPerHeart != 0)
        {
            amount++;
        }
        
        //containers = new List<HealthContainer>();

//        for (int i = 0; i < amount; i++)
//        {
//            GameObject heart = Instantiate(healthContainer, transform);
//            containers.Add(heart.GetComponent<HealthContainer>());
//            containers[i].maxHealth = healthPerHeart;
//        }

        PlayerHealth.HealthUpdated += UpdateHealthHandler;
        
        UpdateHealthHandler();
    }
    
    
    private void UpdateHealthHandler()
    {        
        if (this.currentHealth == -1)
        {
            this.currentHealth = PlayerHealth.currentHealth;
        }
        //Debug.Log("Update Health UI");

        UpdateContainers();

        StopCoroutine(UpdateHealth());
        StartCoroutine(UpdateHealth());
        return;
        //current health
        int currentHealth = PlayerHealth.currentHealth;

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
    

    private void UpdateContainers()
    {
        int numContainers = containers.Count;
        int thing = numContainers * healthPerHeart;
        
        //Debug.Log($"current containers = {numContainers}");
        
        //Debug.Log($"numContainers = {numContainers}, thing = {thing}");
        
        //remove containers
        if (thing > PlayerHealth.maxHealth)
        {
            //remove containers
            
            //get how many to remove
            int removeNum = (thing - PlayerHealth.maxHealth) / healthPerHeart;
            
            //Debug.Log($"removeNum = {removeNum}, current containers = {numContainers}");
            for (int i = removeNum - 1; i >= 0; --i)
            {
                //Debug.Log($"removeNum i = {i}, containers max index = {containers.Count - 1}");
                //Debug.Log($"removing health, removed {containers[i].health}, new health = {currentHealth}");
                Destroy(containers[i].gameObject);
                containers.RemoveAt(i);
                UpdateInternalCurrentHealth();
                
            }
        }
        
        //add containers
        if (thing < PlayerHealth.maxHealth)
        {
            //add containers
            int addNum = (PlayerHealth.maxHealth - thing) / healthPerHeart;

            StartCoroutine(AddHearts(addNum));

            return;
            for (int i = 0; i < addNum; i++)
            {
                GameObject heart = Instantiate(healthContainer, transform);
                containers.Add(heart.GetComponent<HealthContainer>());
                heart.GetComponent<HealthContainer>().maxHealth = healthPerHeart;
                
                ShakeStuff.Shake(heart.transform);
            }
        }
    }

    

    private IEnumerator AddHearts(int numHearts, float waitTime = .2f)
    {
        for (int i = 0; i < numHearts; i++)
        {
            GameObject heart = AddContainer();

            yield return new WaitForEndOfFrame();
            if(heart)
                ShakeStuff.Shake(heart.transform);
            
            yield return new WaitForSeconds(waitTime);
        }
    }

    private IEnumerator UpdateContainers(int numHearts, float waitTime = .2f)
    {
        int cHealth = PlayerHealth.currentHealth;
        
        
        for (int i = 0; i < numHearts; i++)
        {
            //get last container
            HealthContainer cont = containers[containers.Count - 1];
        }
        
        yield return new WaitForEndOfFrame();
    }

    private GameObject AddContainer()
    {
        GameObject heart = Instantiate(healthContainer, transform);
        containers.Add(heart.GetComponent<HealthContainer>());
        heart.GetComponent<HealthContainer>().maxHealth = healthPerHeart;

        UpdateInternalCurrentHealth();
        //Debug.Log($"current health = {currentHealth}");

        return heart;
    }
    
    private void RemoveLastContainer()
    {
        
    }

    private IEnumerator UpdateHealth(float waitTime = 0.04f)
    {
        
        int healthDifference = PlayerHealth.currentHealth - currentHealth;

        //Debug.Log($"updating health, healthDifference = {healthDifference}, currentHealth = {currentHealth}");
        //if gaining health
        if (healthDifference > 0)
        {
            //Debug.Log("Adding health");
            //add health
            //loop as many times as there is a health difference
            for (int i = 0; i < healthDifference; i++)
            {
                //for each container
                foreach (var cont in containers)
                {
                    //find the first container that needs a heart
                    if (cont.health < healthPerHeart)
                    {
                        //set its health
                        cont.SetHealth(cont.health + 1);
                        UpdateInternalCurrentHealth();
                        
                        //shake the heart
                        yield return new WaitForEndOfFrame();
                        ShakeStuff.Shake(cont.transform);
                        break;
                    }
                }
            
            
                yield return new WaitForSeconds(waitTime);
            }
        }
        //if losing health
        else if (healthDifference < 0)
        {
            //Debug.Log("Removing Health");
            //remove health
            for (int i = 0; i < -healthDifference; i++)
            {
                //serach for an filled container backwards
                for (int j = containers.Count - 1; j >= 0; j--)
                {
                    if (containers[j].health > 0)
                    {
                        //full container found
                        containers[j].SetHealth(containers[j].health - 1);
                        UpdateInternalCurrentHealth();
                        
                        //shake the heart
                        yield return new WaitForEndOfFrame();
                        ShakeStuff.Shake(containers[j].transform);
                        break;
                    }
                }
                
                yield return new WaitForSeconds(waitTime);
            }
        }
    }

    private void UpdateInternalCurrentHealth()
    {
        int c = 0;
        foreach (var cont in containers)
        {
            c += cont.health;
        }

        currentHealth = c;
    }

    private void OnDisable()
    {
        PlayerHealth.HealthUpdated -= UpdateHealthHandler;
    }
}
