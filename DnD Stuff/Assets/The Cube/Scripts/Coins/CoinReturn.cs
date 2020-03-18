using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoinReturn : MonoBehaviour
{
    public Animator anims;
    
    public List<GameObject> coinModels;
    public Coin cTri, cSq, cPen, cHex, cOct;

    public List<Coin> coins;
    public CoinInventory coinInv;

    private void Awake()
    {
        if (coinInv) return;
        coinInv = FindObjectOfType<CoinInventory>();
    }
    
    public void ReturnCoins(List<Coin> newCoins)
    {
        coins.AddRange(newCoins);
        
        foreach (var coin in coins)
        {
            ActivateCoin(coin);
        }
        
        anims.SetTrigger("Return");
    }

    public void GrabCoins()
    {
        if (coins.Count <= 0) return;
        
        foreach (var coinModel in coinModels)
        {
            coinModel.SetActive(false);
        }

        foreach (var coin in coins)
        {
            coinInv.AddCoin(coin);
        }
        
        coins.Clear();
    }

    private void ActivateCoin(Coin coin)
    {
        
        
        if (coin == cTri)
        {
            ActivateModel(0);
        }

        if (coin == cSq)
        {
            ActivateModel(1);
        }

        if (coin == cPen)
        {
            ActivateModel(2);
        }

        if (coin == cHex)
        {
            ActivateModel(3);
        }

        if (coin == cOct)
        {
            ActivateModel(4);
        }

    }

    private void ActivateModel(int i)
    {
        if(i >= 0)
            coinModels[i].SetActive(true);
    }
}
