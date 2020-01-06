using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuildingInfoPanelUI : MonoBehaviour
{
    public UpgradeableBuilding building;
    public BuildingUpgradeUI buildingUpgradeUi;

    public List<BuildingModule> buildingModules;

    private void Awake()
    {
        BuildingModule[] newModules = GetComponentsInChildren<BuildingModule>(true);
        buildingModules.AddRange(newModules);
        
        //enable/disable proper buttons
    }

    public void SetBuilding(UpgradeableBuilding newBuilding)
    {
        building = newBuilding;
        buildingUpgradeUi.SetBuilding(newBuilding);

        foreach (var module in buildingModules)
        {
            module.SetBuilding(newBuilding);
        }
    }
}
