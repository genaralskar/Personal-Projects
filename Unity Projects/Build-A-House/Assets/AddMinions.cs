using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AddMinions : MonoBehaviour
{
    public List<Controller> controllersToAdd;

    public MinionManager minionManager;

    public Transform minonParent;
    
    
    private void OnEnable()
    {
        AddMinons();
    }

    public void AddMinons()
    {
        foreach (var controller in controllersToAdd)
        {
            minionManager.AddController(controller);
            if (!minonParent)
            {
                minonParent = minionManager.transform;
            }

            controller.transform.parent = minonParent;
        }
    }
}
