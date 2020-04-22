using System.Collections;
using System.Collections.Generic;
using genaralskar.FPSInteract;
using UnityEngine;
using UnityEngine.Events;

public class ItemDisplay : MonoBehaviour
{
    public UnityAction<Item> ItemPlaced;
    public UnityAction<Item> ItemRemoved;
    
    public Transform itemPos;
    
    private Item currentItem;
    private ItemInventory inv;

    public bool startWithItem = false;
    public Item startItem;

    private void Awake()
    {
        inv = FindObjectOfType<ItemInventory>();
        GetComponentInChildren<ItemDisplayActivator>().itemDisplay = this;
        if (startItem)
        {
            currentItem = startItem;
            currentItem.transform.parent = itemPos;
            currentItem.transform.position = itemPos.transform.position;
            currentItem.transform.rotation = itemPos.transform.rotation;
            currentItem.transform.localPosition = Vector3.zero;
            currentItem.transform.localRotation = Quaternion.identity;
        
            ItemPlaced?.Invoke(currentItem);
            currentItem.ItemPlaced?.Invoke();
        }
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
        Item tempCur = currentItem;
        inv.AddItem(currentItem);
        ItemRemoved?.Invoke(currentItem);
        currentItem.OnStopLook();
        currentItem = null;
        Place();
        inv.SelectItem(tempCur);
    }

    private void Pickup()
    {
        inv.AddItem(currentItem);
        inv.SelectItem(currentItem);
        ItemRemoved?.Invoke(currentItem);
        currentItem.OnStopLook();
        currentItem = null;
    }

    private void Place()
    {
        currentItem = inv.TakeCurrentItem();
        currentItem.transform.parent = itemPos;
        currentItem.transform.position = itemPos.transform.position;
        currentItem.transform.rotation = itemPos.transform.rotation;
        
        ItemPlaced?.Invoke(currentItem);
        currentItem.ItemPlaced?.Invoke();
    }

    public void OnLook()
    {
        if (!currentItem) return;
        currentItem.OnLook();
    }

    public void OnStopLook()
    {
        if (!currentItem) return;
        currentItem.OnStopLook();
    }
}
