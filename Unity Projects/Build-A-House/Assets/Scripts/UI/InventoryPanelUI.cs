using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.PlayerLoop;

public class InventoryPanelUI : MonoBehaviour
{
    private List<GameObject> itemPanels;
    public List<ItemUI> items;

    public GameObject itemPanelPrefab;
    
    private void Awake()
    {
        itemPanels = new List<GameObject>();
        
        for (int i = 0; i < 10; i++)
        {
            GameObject newObj = Instantiate(itemPanelPrefab, transform);
            itemPanels.Add(newObj);
            items.Add(newObj.GetComponent<ItemUI>());
            newObj.SetActive(false);
        }
        
        UpdateAllPanels(null);

        Inventory.inventoryUpdated += UpdateAllPanels;
    }

    public void UpdateAllPanels(InventorySlot newSlot)
    {
        foreach (var panel in itemPanels)
        {
            panel.SetActive(false);
        }
        
        for (int i = 0; i < Inventory.Items.Count; i++)
        {
            itemPanels[i].SetActive(true);
            SetPanel(i, Inventory.Items[i]);
        }
    }

    public void UpdatePanels(InventorySlot newSlot)
    {
        UpdateAllPanels(null);
        return;
        
        foreach (var item in items)
        {
            if (item.slot.item == newSlot.item)
            {
                item.UpdateUI(newSlot);
                return;
            }
        }
        
        //add new item ui
        
    }

    public void SetPanel(int index, InventorySlot newSlot)
    {
        items[index].SetSlot(newSlot);
    }
}
