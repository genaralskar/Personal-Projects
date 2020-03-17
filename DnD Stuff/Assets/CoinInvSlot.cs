using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

[System.Serializable]
public class CoinInvSlot
{
    public Coin coin;
    public int amount;
    
    //======= this shouldn't be here
    
    //=============

    public CoinInvSlot(Coin coin, int amount)
    {
        this.coin = coin;
        this.amount = amount;
    }
}
