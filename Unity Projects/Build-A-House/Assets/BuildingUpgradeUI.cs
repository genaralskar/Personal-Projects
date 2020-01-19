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

    public override void SetBuilding(UpgradeableBuilding newBuilding)
    {
        Debug.Log(newBuilding);
        base.SetBuilding(newBuilding);
        //building = newBuilding;
        upgradeCost = building.buildingType.upgradeCosts[building.currentLevel].costs;
        upgradeInfoText.text = building.buildingType.upgradeCosts[building.currentLevel].upgradeText;
        costInfo.UpdateCosts(newBuilding.buildingType.upgradeCosts[newBuilding.currentLevel]);
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
