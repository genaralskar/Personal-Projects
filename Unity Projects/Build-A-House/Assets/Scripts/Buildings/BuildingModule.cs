using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class BuildingModule : MonoBehaviour
{
    [HideInInspector]
    public UpgradeableBuilding building;
    public BuildingModuleType modualType;
    
    public virtual void SetBuilding(UpgradeableBuilding newBuilding)
    {
        building = newBuilding;
    }
}
