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

    public void UpdateUISlot(CoinInvSlot newSlot)
    {
        coin = newSlot.coin;
        if(coin.image != null)
            image.sprite = coin.image;
        amountText.text = newSlot.amount.ToString();
    }
    
    public void UpdateUISlot(Coin newCoin, int newAmount)
    {
        coin = newCoin;
        if(coin != null && coin.image != null)
            image.sprite = coin.image;
        else
        {
            image.sprite = null;
        }
        amountText.text = newAmount < 0 ? "" : newAmount.ToString();
        
    }
}
