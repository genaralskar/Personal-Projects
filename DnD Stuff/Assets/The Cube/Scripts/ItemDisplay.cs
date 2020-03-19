using System.Collections;
using System.Collections.Generic;
using genaralskar.FPSInteract;
using UnityEngine;
using UnityEngine.Events;

public class ItemDisplay : MonoBehaviour
{
    public UnityAction<Item> ItemPlaced;
    
    public Transform itemPos;
    
    private Item currentItem;
    private ItemInventory inv;

    private void Awake()
    {
        inv = FindObjectOfType<ItemInventory>();
    }

    public void SwapLogic()
    {
        if (currentItem)
        {
            if (inv.currentItem)
            {
                //Item on display and item in hand
                Swap();
            }
            else
            {
                //item on display
                Pickup();
            }
            
        }
        else if(inv.currentItem)
        {
            //Item in hand
            Place();
        }
    }

    private void Swap()
    {
        Debug.Log("Swap");
        Item tempCur = currentItem;
        inv.AddItem(currentItem);
        currentItem = null;
        Place();
        inv.SelectItem(tempCur);
    }

    private void Pickup()
    {
        Debug.Log("Pickup");
        inv.AddItem(currentItem);
        inv.SelectItem(currentItem);
        currentItem = null;
    }

    private void Place()
    {
        Debug.Log("Place");
        currentItem = inv.TakeCurrentItem();
        currentItem.transform.parent = itemPos;
        currentItem.transform.position = itemPos.transform.position;
        currentItem.transform.rotation = itemPos.transform.rotation;
        
        ItemPlaced?.Invoke(currentItem);
    }
}
