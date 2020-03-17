using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CoinComparator : MonoBehaviour
{
    public Coin coin1;
    public Coin coin2;

    public CoinInventory coinInv;

    public Image comparitorImage;
    public Sprite blankSprite, greaterSprite, lessSprite, equalSprite, errorSprite;
    
    public enum Comparison{Equal, Greater, Less, Error, Blank}

    public void SlotCoin(int slotNum)
    {
        if (coinInv.selectedCoin == null) return;

        Coin newCoin = coinInv.TakeSelectedCoin();
        
        if (slotNum == 0)
        {
            coinInv.AddCoin(coin1);
            coin1 = newCoin;
        }
        else
        {
            coinInv.AddCoin(coin2);
            coin2 = newCoin;
        }
        UpdateComparitorUI(Comparison.Blank);
    }

    public void Compare()
    {
        Comparison comp = Comparison.Blank;
        if (coin1 == null || coin2 == null)
        {
            UpdateComparitorUI(Comparison.Error);
            return;
        }
        
        int ca1 = coin1.value;
        int ca2 = coin2.value;
        if (ca1 > ca2)
        {
            comp = Comparison.Greater;
        }
        else if (ca1 == ca2)
        {
            comp = Comparison.Equal;
        }
        else if (ca1 < ca2)
        {
            comp = Comparison.Less;
        }
        
        UpdateComparitorUI(comp);
        ReturnCoins();
    }

    public void ReturnCoins()
    {
        coinInv.AddCoin(coin1);
        coin1 = null;
        coinInv.AddCoin(coin2);
        coin2 = null;
        
        
    }
    
    public void UpdateComparitorUI(Comparison comp)
    {
        switch (comp)
        {
            case Comparison.Blank:
                comparitorImage.sprite = blankSprite;
                break;
            case Comparison.Equal:
                comparitorImage.sprite = equalSprite;
                break;
            case Comparison.Greater:
                comparitorImage.sprite = greaterSprite;
                break;
            case Comparison.Less:
                comparitorImage.sprite = lessSprite;
                break;
            case Comparison.Error:
                comparitorImage.sprite = errorSprite;
                break;
        }
    }
}
