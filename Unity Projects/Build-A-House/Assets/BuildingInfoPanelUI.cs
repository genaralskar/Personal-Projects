using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class BuildingInfoPanelUI : UIActivator
{
    public UpgradeableBuilding building;
    public BuildingUpgradeUI buildingUpgradeUi;

    public List<BuildingModule> buildingModules;

    public static UnityAction<UpgradeableBuilding> SetUIBuilding;

    public static UnityAction DeactivateUI;

    private void Awake()
    {
        BuildingModule[] newModules = GetComponentsInChildren<BuildingModule>(true);
        buildingModules.AddRange(newModules);

        SetUIBuilding = SetBuilding;
        DeactivateUI = DeactiviateUI;
    }

    public void SetBuilding(UpgradeableBuilding newBuilding)
    {
        building = newBuilding;
        //buildingUpgradeUi.SetBuilding(newBuilding);

        foreach (var module in buildingModules)
        {
            module.SetBuilding(newBuilding);
        }
        
        ActivateUI();
    }
}
