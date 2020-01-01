using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UpgradeCostsPanelUI : MonoBehaviour
{
    public List<CostPanelUI> costPanels;

    private List<InventorySlot> theseCosts;
    
    private void OnEnable()
    {
        Inventory.inventoryUpdated += InventoryUpdatedHandler;
    }

    private void OnDisable()
    {
        Inventory.inventoryUpdated -= InventoryUpdatedHandler;
    }

    public void UpdateCosts(Upgrade upgrade)
    {
        foreach (var panel in costPanels)
        {
            panel.gameObject.SetActive(false);
        }

        int counter = 0;
        foreach (var cost in upgrade.costs)
        {
            CostPanelUI costPanel = costPanels[counter];
            costPanel.gameObject.SetActive(true);
            costPanel.UpdatePanel(cost);
            counter++;
        }
    }

    public void UpdateCosts(List<InventorySlot> costs)
    {
        foreach (var panel in costPanels)
        {
            panel.gameObject.SetActive(false);
        }

        int counter = 0;
        foreach (var cost in costs)
        {
            CostPanelUI costPanel = costPanels[counter];
            costPanel.gameObject.SetActive(true);
            costPanel.UpdatePanel(cost);
            counter++;
        }
        
        
        theseCosts = costs;
    }

    private void InventoryUpdatedHandler(InventorySlot newSlot)
    {
        if (theseCosts == null) return;
        UpdateCosts(theseCosts);
    }
}
