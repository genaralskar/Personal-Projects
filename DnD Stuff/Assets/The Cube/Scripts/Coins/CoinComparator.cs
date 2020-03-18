using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.PlayerLoop;
using UnityEngine.UI;

public class CoinComparator : MonoBehaviour
{
    public List<Coin> slot1;
    public List<Coin> slot2;

    public CoinInventory coinInv;

    public CoinReturn coinReturn;
    
    public Image comparitorImage;
    public Sprite blankSprite, greaterSprite, lessSprite, equalSprite, errorSprite;

    private void Awake()
    {
        coinInv.ReturnAllCoin += ReturnAllCoinsHandler;
    }
    
    public enum Comparison{Equal, Greater, Less, Error, Blank}

    public void SlotCoin(int slotNum)
    {
        if (coinInv.selectedCoin == null) return;

        Coin newCoin = coinInv.TakeSelectedCoin();
        
        if (slotNum == 0)
        {
            slot1.Add(newCoin);
        }
        else
        {
            slot2.Add(newCoin);
        }
        UpdateComparitorUI(Comparison.Blank);
    }

    public void Compare()
    {
        Comparison comp = Comparison.Blank;
        if (slot1.Count <= 0 || slot2.Count <= 0)
        {
            UpdateComparitorUI(Comparison.Error);
            return;
        }

        int s1 = 0;
        int s2 = 0;
        foreach (var coin in slot1)
        {
            s1 += coin.value;
        }
        foreach (var coin in slot2)
        {
            s2 += coin.value;
        }

        if (s1 > s2)
        {
            comp = Comparison.Greater;
        }
        else if (s1 == s2)
        {
            comp = Comparison.Equal;
        }
        else if (s1 < s2)
        {
            comp = Comparison.Less;
        }
        
        UpdateComparitorUI(comp);
    }

    public void ReturnCoins()
    {
        List<Coin> rc = new List<Coin>();
        
        foreach (var coin in slot1)
        {
            rc.Add(coin);
        }
        slot1.Clear();
        
        foreach (var coin in slot2)
        {
            rc.Add(coin);
        }
        slot2.Clear();

        coinReturn.ReturnCoins(rc);
        
        UpdateComparitorUI(Comparison.Blank);
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

    public void ReturnAllCoinsHandler()
    {
        ReturnCoins();
    }
}
