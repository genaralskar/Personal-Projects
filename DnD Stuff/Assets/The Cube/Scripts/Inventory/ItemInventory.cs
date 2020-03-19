
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class ItemInventory : MonoBehaviour
{
    public UnityAction InventoryUpdated;
    public UnityAction NewItemSelected;
    
    public List<Item> items;

    public Item currentItem;

    private Collider[] currentItemColliders = new Collider[0];
    
    public void AddItem(Item newItem)
    {
        if (newItem == null) return;
        items.Add(newItem);
        newItem.Disable();
        newItem.ItemPickedUp?.Invoke();
        
        items.Sort(Item.SortItem);
        
        InventoryUpdated?.Invoke();
    }

    public void ReturnCurrentItem()
    {
        ActivateCurrentItemColliders(true);
        
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
        if(currentItem)
        {
            ReturnCurrentItem();
        }
        
        int i = items.IndexOf(item);
        if (i == -1)
        {
            //item not in list
            return;
        }

        currentItem = items[i];
        items.RemoveAt(i);

        currentItemColliders = item.GetComponents<Collider>();
        ActivateCurrentItemColliders(false);
        
        items.Sort(Item.SortItem);
        
        InventoryUpdated?.Invoke();
        NewItemSelected?.Invoke();
    }

    private void ActivateCurrentItemColliders(bool enabled)
    {
        foreach (var col in currentItemColliders)
        {
            col.enabled = enabled;
        }
    }
}
