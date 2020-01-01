using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Building/Building Type")]
public class BuildingType : ScriptableObject
{
    public List<BuildingLevel> upgradeCosts;

    public void UpgradeBuilding()
    {
        
    }
}
