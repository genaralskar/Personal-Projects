using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoinInteract : MonoBehaviour
{
    public List<Coin> coins;

    public Coin SelectedCoin;

    public CoinInventory coinInv;
    
    //Select a coin
    public void SelectCoin(Coin newCoin)
    {
        if (coinInv.Contains(newCoin))
        {
            ReturnSelectedCoin();
            coinInv.RemoveCoin(newCoin);
            coinInv.selectedCoin = newCoin;
        }
    }
    
    //Add a coin to this
    public void AddSelectedCoin(bool removeCoin = true)
    {
        this.coins.Add(coinInv.selectedCoin);
        if(removeCoin)
            coinInv.selectedCoin = null;
    }

    //Return a coin to inv
    public void ReturnSelectedCoin()
    {
        if (coinInv.selectedCoin == null) return;
        coinInv.AddCoin(coinInv.selectedCoin);
        coinInv.selectedCoin = null;
    }

    public void ReturnCoin(Coin _coin)
    {
        coinInv.AddCoin(_coin);
    }

    //Return all coins to inv
    public void ReturnAllCoins()
    {
        foreach (var coin in this.coins)
        {
            coinInv.AddCoin(coin);
        }

        coins = null;
    }
    
    //Get Selected Coin
}
