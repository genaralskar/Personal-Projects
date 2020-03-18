using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoinHolder : MonoBehaviour
{
    public List<Coin> coins;
    public CoinInventory coinInv;
    public CoinReturn coinReturn;
    
    private void Awake()
    {
        coinInv.ReturnAllCoin += ReturnAllCoinsHandler;
    }
    
    public void SlotCoin()
    {
        if (coinInv.selectedCoin == null) return;

        Coin newCoin = coinInv.TakeSelectedCoin();

        coins.Add(newCoin);
    }
    
    public void ReturnCoins()
    {
        List<Coin> rc = new List<Coin>();
        
        foreach (var coin in coins)
        {
            rc.Add(coin);
        }
        coins.Clear();

        coinReturn.ReturnCoins(rc);
    }
    
    private void ReturnAllCoinsHandler()
    {
        ReturnCoins();
    }
}
