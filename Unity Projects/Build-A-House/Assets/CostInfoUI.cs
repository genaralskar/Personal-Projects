using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class CostInfoUI : MonoBehaviour
{

    public UnityAction PurchaseSucess;
    
    public bool CanPurchase(List<InventorySlot> costs)
    {
        return Inventory.BuyItem(costs, 1);
    }

    public void Buy()
    {
        
    }
}
