using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class CoinUISlot : MonoBehaviour
{
    public Coin coin;
    
    public RawImage image;
    public Button button;
    public TextMeshProUGUI amountText;

    private void Awake()
    {
        image = GetComponent<RawImage>();
        button = GetComponent<Button>();
        amountText = GetComponentInChildren<TextMeshProUGUI>();
    }

    public void UpdateUISlot(CoinInvSlot newSlot)
    {
        coin = newSlot.coin;
        if(coin.image != null)
            image.texture = coin.image;
        amountText.text = newSlot.amount.ToString();
    }
    
    public void UpdateUISlot(Coin newCoin, int newAmount)
    {
        coin = newCoin;
        if(coin != null && coin.image != null)
            image.texture = coin.image;
        else
        {
            image.texture = null;
        }
        amountText.text = newAmount < 0 ? "" : newAmount.ToString();
        
    }
}
