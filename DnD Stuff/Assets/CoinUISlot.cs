using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class CoinUISlot : MonoBehaviour
{
    public Coin coin;
    
    public Image image;
    public Button button;
    public TextMeshProUGUI amountText;

    private void Awake()
    {
        image = GetComponent<Image>();
        button = GetComponent<Button>();
        amountText = GetComponentInChildren<TextMeshProUGUI>();
    }

    public void UpdateUISlot(int newAmount)
    {
        amountText.text = newAmount.ToString();
    }
}
