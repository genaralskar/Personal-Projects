using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HouseUpgradeCostPanelUI : UpgradeCostsPanelUI
{
    public House house;
    private bool actionAssigned = false;

    private void OnEnable()
    {
        if (!house) return;
        house.NewHouseUpgrade += NewHouseUpgradeHandler;
        actionAssigned = true;
        Debug.Log("Enabled and assigned");
        AutoUpdateCosts();
    }

    private void OnDisable()
    {
        if (!house) return;
        if(actionAssigned)
            house.NewHouseUpgrade -= NewHouseUpgradeHandler;
        actionAssigned = false;
    }

    public void AutoUpdateCosts()
    {
        UpdateCosts(house.GetNextUpgrade());
    }

    private void NewHouseUpgradeHandler(Upgrade newUpgrade)
    {
        AutoUpdateCosts();
    }
}
