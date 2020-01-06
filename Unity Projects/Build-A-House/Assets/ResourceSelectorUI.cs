using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// this goes on the drop downs in the inns for the resource selector
/// </summary>
public class ResourceSelectorUI : BuildingModule
{

    public FindableItems findableItems;
    public MinionManager minionManager;

    public TMP_Dropdown dropdown;

    private void Awake()
    {
        //dropdown = GetComponent<TMP_Dropdown>();
        SetOptions();
    }

    public void SetOptions()
    {
        List<TMP_Dropdown.OptionData> newOptions = new List<TMP_Dropdown.OptionData>();

        foreach (var item in findableItems.findableItems)
        {
            newOptions.Add(new TMP_Dropdown.OptionData(item.name));
        }
        
        dropdown.AddOptions(newOptions);
    }

    public void SetNewItemType()
    {
        
    }
}
