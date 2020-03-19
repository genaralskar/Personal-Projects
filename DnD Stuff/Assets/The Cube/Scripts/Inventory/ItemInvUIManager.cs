using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ItemInvUIManager : MonoBehaviour
{
    public ItemInventory itemInv;
    
    public List<ItemUISlot> itemUiSlots;

    public GameObject itemInvSlotPrefab;
    public RectTransform slotParent;

    private void Awake()
    {
        itemInv.InventoryUpdated += InventoryUpdatedHandler;
        
        //spawn a bunch of initial slots
        SpawnPanels();
    }

    private void SpawnPanels()
    {
        for (int i = 0; i < 20; i++)
        {
            GameObject obj = Instantiate(itemInvSlotPrefab, slotParent);
            ItemUISlot newSlot = obj.GetComponent<ItemUISlot>();
            newSlot.inv = itemInv;
            itemUiSlots.Add(newSlot);
        }
        
        InventoryUpdatedHandler();
    }
    
    public void InventoryUpdatedHandler()
    {
        foreach (var slot in itemUiSlots)
        {
            slot.gameObject.SetActive(false);
        }
        
        for (int i = 0; i < itemInv.items.Count; i++)
        {
            itemUiSlots[i].gameObject.SetActive(true);
            itemUiSlots[i].UpdateSlot(itemInv.items[i]);
        }
    }
}
