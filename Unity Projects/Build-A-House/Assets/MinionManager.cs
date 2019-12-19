using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class MinionManager : MonoBehaviour
{
    private List<Controller> inactiveControllers;
    private List<Controller> activeControllers;
    
    
    private void Awake()
    {
        inactiveControllers = new List<Controller>();
        activeControllers = new List<Controller>();
        
        
        Controller[] cont = FindObjectsOfType<Controller>();

        inactiveControllers.AddRange(cont);
        
        foreach (var controller in inactiveControllers)
        {
            if (controller.player)
            {
                inactiveControllers.Remove(controller);
                return;
            }
        }
    }

    private void Start()
    {
        StartCoroutine(moveMinions());
    }

    private IEnumerator moveMinions()
    {
        while (true)
        {
            foreach (var controller in inactiveControllers)
            {
                
                if(controller.busy) continue;
            
                controller.FindNearestResource();
                yield return new WaitForSeconds(.02f);
            }
            
            yield return new WaitForSeconds(.1f);
        }
    }
}
