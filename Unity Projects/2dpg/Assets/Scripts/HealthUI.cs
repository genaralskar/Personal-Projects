using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HealthUI : MonoBehaviour
{
    public Image healthBar;
    public Image overflowHealthBar;

    private void Awake()
    {
        Health.HealthUpdated += HealthHandler;
        Health.OverflowHealthUpdated += OverflowHandler;
    }
    
    private void HealthHandler(float value)
    {
        healthBar.fillAmount = value;
    }

    private void OverflowHandler(float value)
    {
        overflowHealthBar.fillAmount = value;
    }
}
