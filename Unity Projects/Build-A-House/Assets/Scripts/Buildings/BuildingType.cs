using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Building/Building Type")]
public class BuildingType : ScriptableObject
{
    public List<UpgradeLevel> upgradeCosts;
    public List<Upgrade> upgrades;
    public List<BuildingModuleType> moduleTypes;
}
