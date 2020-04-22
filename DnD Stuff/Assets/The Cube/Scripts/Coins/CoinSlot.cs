﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoinSlot : MonoBehaviour
{
    public Coin coin;

    public CoinInventory coinInv;

    private void Awake()
    {
        coinInv = FindObjectOfType<CoinInventory>();
    }

    public void SetCoin()
    {
        coin = coinInv.selectedCoin;
    }
}
