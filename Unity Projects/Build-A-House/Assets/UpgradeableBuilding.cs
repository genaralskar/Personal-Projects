using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UpgradeableBuilding : ClickableObjectBase
{
    public GameObject buildingInfoUI;
    public BuildingUpgradeUI buildingUpgradeUi;
    public BuildingInfoPanelUI buildingInfoPanel;
    
    public List<GameObject> buildingLevels;

    public BuildingType buildingType;
    
    public int currentLevel;

    public override void OnPlayerInRange()
    {
        base.OnPlayerInRange();
        
        //buildingUpgradeUi.SetBuilding(this);
        buildingInfoPanel.SetBuilding(this);
        buildingInfoUI.SetActive(true);
    }

    protected override void OnPlayerLeave()
    {
        buildingInfoUI.SetActive(false);
        
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
