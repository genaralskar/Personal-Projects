using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuildingUpgradeUI : MonoBehaviour
{
    public UpgradeableBuilding building;

    public UpgradeCostsPanelUI costInfo;

    private List<InventorySlot> upgradeCost;

    public void SetBuilding(UpgradeableBuilding newBuilding)
    {
        building = newBuilding;
        upgradeCost = building.building.upgradeCosts[building.currentLevel].costs;
        costInfo.UpdateCosts(upgradeCost);
    }

    public void UpgradeBuilding()
    {
        if (!building) return;
        bool canBuild = Inventory.BuyItem(upgradeCost, 1);
        building.UpgradeBuilding();
    }
}
