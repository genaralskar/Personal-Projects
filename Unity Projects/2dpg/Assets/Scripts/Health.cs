using System.Collections;
using UnityEngine;
using UnityEngine.Events;

public class Health : MonoBehaviour
{
    public static UnityAction<float> HealthUpdated;
    public static UnityAction<float> OverflowHealthUpdated;

    public UnityAction<int> HealthModified;
    public UnityAction IFrameStart;
    public UnityAction IFrameEnd;
    public UnityAction Death;
    
    public bool isPlayer = false;
    
    public int currentHealth = 100;
    public int maxHealth = 100;
    public int maxOverflowHealth = 50;
    public float overflowHealthDrain = 1f;

    public float invincibleTime = 1f;

    public bool invincible = false;
    private bool bufferingHealth = false;
    public bool resetHealth = false;
    public bool enemy = true;

    private void OnEnable()
    {
        currentHealth = maxHealth;
        
        if (isPlayer)
        {
            //update health for ui
            ModifyHealth(0);
        }
        
        IFrameEnd?.Invoke();
    }
    
    private void Start()
    {
        if (isPlayer)
        {
            //update health for ui
            ModifyHealth(0);
        }
    }

    [ContextMenu("ModHealth")]
    public void Mod()
    {
        ModifyHealth(15);
    }
    
    
    public void ModifyHealth(int amount)
    {
        currentHealth += amount;
        
        HealthModified?.Invoke(amount);
        
        if (currentHealth <= 0)
        {
            //death
            currentHealth = 0;
            if (!resetHealth)
            {
                Death?.Invoke();
            }
            else
            {
                currentHealth = maxHealth;
            }            
        }

        if (!invincible && amount < 0 && currentHealth > 0)
        {
            StartCoroutine(IFrames());
        }
        else if(!invincible && amount < 0)
        {
            IFrameStart?.Invoke();
        }

        if (currentHealth > maxHealth)
        {
            //cap overflow health
            if (currentHealth > maxOverflowHealth + maxHealth)
            {
                currentHealth = maxOverflowHealth + maxHealth;
            }
            //start drain coroutine if not already started
            if (!bufferingHealth)
                StartCoroutine(HealthOverflowBuffer());
        }
        
        if(isPlayer)
            HealthUpdated?.Invoke((float)currentHealth/maxHealth);
        
    }

    private IEnumerator IFrames()
    {
        float t = 0;
        if (invincible) t = invincibleTime + 1;
        invincible = true;
        IFrameStart?.Invoke();
        WaitForEndOfFrame wait = new WaitForEndOfFrame();
        while (t < invincibleTime)
        {
            t += Time.deltaTime;
            yield return wait;
        }

        invincible = false;
        IFrameEnd?.Invoke();
    }

    private IEnumerator HealthOverflowBuffer()
    {
        bufferingHealth = true;
        float drainCount = 0;
        WaitForEndOfFrame wait = new WaitForEndOfFrame();
        while (currentHealth > maxHealth)
        {
            drainCount += overflowHealthDrain * Time.deltaTime;
            if (drainCount >= 1)
            {
                ModifyHealth(-1);
                drainCount -= 1;
            }
            
            if(isPlayer)
                OverflowHealthUpdated?.Invoke((float)(currentHealth-maxHealth)/(maxOverflowHealth));
            
            yield return wait;
        }
        bufferingHealth = false;
    }
}
