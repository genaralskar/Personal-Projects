using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UpgradeCostsPanelUI : MonoBehaviour
{
    public List<CostPanelUI> costPanels;

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
}
