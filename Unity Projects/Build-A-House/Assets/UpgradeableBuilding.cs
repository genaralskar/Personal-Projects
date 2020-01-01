using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UpgradeableBuilding : ClickableObjectBase
{
    public GameObject upgradeUI;
    public BuildingUpgradeUI buildingUpgradeUi;
    
    public List<GameObject> buildingLevels;

    public BuildingType building;
    public int currentLevel;

    public override void OnPlayerInRange()
    {
        base.OnPlayerInRange();
        
        buildingUpgradeUi.SetBuilding(this);
        upgradeUI.SetActive(true);
    }

    protected override void OnPlayerLeave()
    {
        upgradeUI.SetActive(false);
        
    }

    public void UpgradeBuilding()
    {
        //disable current building
        buildingLevels[currentLevel].SetActive(false);
        
        //increase level
        currentLevel++;

        //enabled next building
        buildingLevels[currentLevel].SetActive(true);
    }
}
