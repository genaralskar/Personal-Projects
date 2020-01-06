using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class BuildingUpgradeUI : BuildingModule
{
    //public UpgradeableBuilding building;

    public UpgradeCostsPanelUI costInfo;

    public TextMeshProUGUI upgradeInfoText;

    private List<InventorySlot> upgradeCost;

    public void SetBuilding(UpgradeableBuilding newBuilding)
    {
        Debug.Log(newBuilding);
        building = newBuilding;
        upgradeCost = building.buildingType.upgradeCosts[building.currentLevel].costs;
        upgradeInfoText.text = building.buildingType.upgradeCosts[building.currentLevel].upgradeText;
        costInfo.UpdateCosts(upgradeCost);
    }

    public void UpgradeBuilding()
    {
        if (!building) return;
        if (Inventory.BuyItem(upgradeCost, 1))
        {
           building.UpgradeBuilding();
        }

        upgradeCost = building.buildingType.upgradeCosts[building.currentLevel].costs;
        upgradeInfoText.text = building.buildingType.upgradeCosts[building.currentLevel].upgradeText;
        costInfo.UpdateCosts(upgradeCost);
    }
}
