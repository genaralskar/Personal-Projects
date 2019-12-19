using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Upgrade")]
public class Upgrade: ScriptableObject
{
    public List<InventorySlot> costs;

    public bool CanBuild()
    {
        int numItems = costs.Count;
        int itemCheck = 0;
        
        foreach (var cost in costs)
        {
            if (Inventory.GetItemSlot(cost.item) != null && Inventory.GetItemSlot(cost.item).amount >= cost.amount)
            {
                itemCheck++;
            }
            else
            {
                return false;
            }
        }

        if (itemCheck == numItems)
        {
            return true;
        }
        
        return false;
    }
}