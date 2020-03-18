using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class CoinInventory : MonoBehaviour
{
    public List<CoinInvSlot> coins;

    public UnityAction InventoryUpdated;
    public UnityAction<Coin> CoinSelected;
    public UnityAction ReturnAllCoin;
    
    public Coin selectedCoin;
    
    //public CoinUISlot selectedCoinSlot;
    
    private void Awake()
    {
        
    }

    #region Inventory Management

    public void AddCoin(Coin newCoin)
    {
        if (newCoin == null) return;
        
        foreach (var coin in coins)
        {
            if (coin.coin == newCoin)
            {
                //its in the inventory
                
                //increment amount and return
                coin.amount += 1;
                InventoryUpdated?.Invoke();
                return;
            }
        }
        //coin not in inventory, add it
        coins.Add(new CoinInvSlot(newCoin, 1));
        InventoryUpdated?.Invoke();
        //selectedCoinSlot.UpdateUISlot(null, -1);
    }

    public void RemoveCoin(Coin coin)
    {
        int index = IndexOf(coin);
        if (index == -1)
        {
            Debug.LogError("Trying to remove a coin that's not there");
            return;
        }

        if (coins[index].amount > 1)
        {
            coins[index].amount -= 1;
        }
        else
        {
            coins.RemoveAt(index);
        }
        InventoryUpdated?.Invoke();
    }

    #endregion

    #region Selection Stuff

    //Select a coin
    public void SelectCoin(Coin newCoin)
    {
        if (Contains(newCoin))
        {
            ReturnSelectedCoin();
            RemoveCoin(newCoin);
            selectedCoin = newCoin;
            //selectedCoinSlot.UpdateUISlot(selectedCoin, -1);
            CoinSelected(selectedCoin);
        }
    }

    //Return a coin to inv
    public void ReturnSelectedCoin()
    {
        if (selectedCoin == null) return;
        AddCoin(selectedCoin);
        //selectedCoinSlot.UpdateUISlot(null, -1);
        selectedCoin = null;
        CoinSelected(selectedCoin);
    }

    //remove selected to entirely and not add it back to inventory
    //used when something take the coin
    public void RemoveSelectedCoin()
    {
        if (selectedCoin == null) return;
        //selectedCoinSlot.UpdateUISlot(null, -1);
        selectedCoin = null;
        CoinSelected(selectedCoin);
    }

    public void ReturnCoin(Coin _coin)
    {
        AddCoin(_coin);
    }

    //Return all coins to inv
    public void ReturnAllCoins()
    {
        foreach (var coin in this.coins)
        {
            AddCoin(coin.coin);
        }

        coins = null;
    }

    public Coin TakeSelectedCoin()
    {
        Coin _coin = selectedCoin;
        RemoveSelectedCoin();
        return _coin;
    }

    #endregion


    #region Utils

        public bool Contains(Coin newCoin)
        {
            foreach (var coin in coins)
            {
                if (coin.coin == newCoin)
                {
                    //its in the inventory
                    return true;
                }
            }
            //its no in the inventory
            return false;
        }

        public int IndexOf(Coin _coin)
        {
            for (int i = 0; i < coins.Count; i++)
            {
                if (coins[i].coin == _coin)
                {
                    return i;
                }
            }

            return -1;
        }

        public int GetCoinAmount(Coin _coin)
        {
            int i = IndexOf(_coin);
            return i >= 0 ? coins[i].amount : -1;
        }
    
    #endregion
}