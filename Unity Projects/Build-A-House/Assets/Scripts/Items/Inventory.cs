using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public static class Inventory
{
    public static UnityAction<InventorySlot> inventoryUpdated;
    
    private static List<InventorySlot> items;
    
    public static List<InventorySlot> Items {
        get
        {
            if (items == null)
            {
                items = new List<InventorySlot>();
            }

            return items;
        }
        set { items = value; }
    }

    public static void AddItem(Item item, int amount)
    {
        //Debug.Log("Adding Item");
        foreach (var slot in Items)
        {
            //if item in inventory, add to amount
            if (slot.item == item)
            {
                slot.amount += amount;
                inventoryUpdated?.Invoke(slot);
                return;
            }
        }
        
        Items.Add(new InventorySlot(item, amount));
        inventoryUpdated?.Invoke(new InventorySlot(item, amount));
    }

    public static InventorySlot RemoveItem(Item item, int amount, bool takeAnyway = false)
    {
        foreach (var slot in Items)
        {
            //found slot with item
            if (slot.item == item)
            {
                //the slot does not have enough of the item
                if (slot.amount < amount)
                {
                    //were gonna take it all anyway
                    if (takeAnyway)
                    {
                        inventoryUpdated?.Invoke(slot);
                        return slot;
                    }
                    //not enough of the item, so dont return anything
                    inventoryUpdated?.Invoke(null);
                    return null;
                }
                
                //the slot does have enough of the item
                slot.amount -= amount;
                //remove the slot if there is no more of the item left
                if (slot.amount == 0)
                {
                    Items.Remove(slot);
                }
                inventoryUpdated?.Invoke(new InventorySlot(item, amount));
                return new InventorySlot(item, amount);
            }
        }

        //there was no matching item in the inventory
        inventoryUpdated?.Invoke(null);
        return null;
    }

    public static InventorySlot GetItemSlot(Item itemToFind)
    {
        foreach (var item in Items)
        {
            if (item.item == itemToFind)
            {
                return item;
            }
        }

        return null;
    }
}
