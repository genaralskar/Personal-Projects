using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuildingPanelTabSwitcherUI : MonoBehaviour
{
    public List<GameObject> tabWindows;
    
    public void SwitchTabs(int newTab)
    {
        foreach (var tab in tabWindows)
        {
            tab.SetActive(false);
        }
        
        tabWindows[newTab].SetActive(true);
    }
}
