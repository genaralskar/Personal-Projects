using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HouseUpgradeCostPanelUI : UpgradeCostsPanelUI
{
    public House house;

    private void OnEnable()
    {
        house.NewHouseUpgrade += NewHouseUpgradeHandler;
        AutoUpdateCosts();
    }

    private void OnDisable()
    {
        house.NewHouseUpgrade -= NewHouseUpgradeHandler;
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
