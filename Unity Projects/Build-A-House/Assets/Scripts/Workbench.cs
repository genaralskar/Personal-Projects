using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Workbench : ClickableObjectBase
{
    [Header("Workbench Stuff")]
    public GameObject WorkbenchUI;
    
    public override void OnPlayerInRange()
    {
        base.OnPlayerInRange();
        WorkbenchUI.SetActive(true);
    }

    protected override void OnPlayerLeave()
    {
        base.OnPlayerLeave();
        WorkbenchUI.SetActive(false);
    }
}
