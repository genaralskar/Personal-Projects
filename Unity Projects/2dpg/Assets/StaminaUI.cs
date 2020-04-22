using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class StaminaUI : MonoBehaviour
{
    public Image staminaBar;

    private void Awake()
    {
        Player.StaminaRechargeAction += StaminaHandler;
    }
    
    private void StaminaHandler(float value)
    {
        staminaBar.fillAmount = value;
    }
}
