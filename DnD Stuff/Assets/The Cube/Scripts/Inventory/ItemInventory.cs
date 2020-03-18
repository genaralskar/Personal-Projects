using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class ItemInventory : MonoBehaviour
{
    public UnityAction InventoryUpdated;
    public UnityAction NewItemSelected;
    
    public List<Item> items;

    public Item currentItem;
    
    public void AddItem(Item newItem)
    {
        if (newItem == null) return;
        items.Add(newItem);
        newItem.Disable();
        InventoryUpdated?.Invoke();
    }

    public void ReturnCurrentItem()
    {
        AddItem(currentItem);
        currentItem = null;
        InventoryUpdated?.Invoke();
    }

    public Item TakeCurrentItem()
    {
        Item temp = currentItem;
        currentItem = null;
        return temp;
    }

    public GameObject GetCurrentItemGO()
    {
        if (currentItem == null) return null;
        return currentItem.gameObject;
    }

    public void SelectItem(Item item)
    {
        Debug.Log("Item Selected");
        int i = items.IndexOf(item);
        if (i == -1)
        {
            //item not in list
            Debug.Log("Not In List");
            return;
        }

        currentItem = items[i];
        items.RemoveAt(i);
        InventoryUpdated?.Invoke();
        NewItemSelected?.Invoke();
    }
}
