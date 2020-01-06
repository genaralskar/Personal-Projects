using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class MinionManager : MonoBehaviour
{
    [SerializeField]
    private List<Controller> controllers;
    private List<Controller> controllersToRemove;
    private bool mustRemoveController = false;

    //list of controllers and the managers they belong to
    private static Dictionary<Controller, MinionManager> controllerManagers = new Dictionary<Controller, MinionManager>();

    public Item searchItem;
    public FindableItems findableItems;
    
    private void Awake()
    {
        controllers = new List<Controller>();
        controllersToRemove = new List<Controller>();
    }

    private void Start()
    {
        StartCoroutine(moveMinions());
    }

    private IEnumerator moveMinions()
    {
        while (true)
        {
            foreach (var controller in controllers)
            {
                if(controller.player) continue;
                if(controller.busy) continue;
            
                controller.FindNearestResource();
                yield return new WaitForSeconds(.02f);
                if (mustRemoveController)
                {
                    break;
                }
            }
            RemoveOldControllers();
            yield return new WaitForSeconds(.1f);
        }
    }

    private static MinionManager ControllerHaveManager(Controller controllerToCheck)
    {
        if (controllerManagers.ContainsKey(controllerToCheck))
        {
            return controllerManagers[controllerToCheck];
        }

        return null;
    }

    public void AddController(Controller newController)
    {
        //check if controller belongs to another manager
        if (ControllerHaveManager(newController))
        {
            ControllerHaveManager(newController).RemoveController(newController);
        }
        
        controllers.Add(newController);
        controllerManagers.Add(newController, this);
        newController.gatherType = searchItem;
    }

    public void RemoveController(Controller controllerToRemove)
    {
        controllersToRemove.Add(controllerToRemove);
        mustRemoveController = true;
    }

    private void RemoveOldControllers()
    {
        foreach (var controller in controllersToRemove)
        {
            if (controllers.Contains(controller))
            {
                controllers.Remove(controller);
            }
        }

        mustRemoveController = false;
    }

    public void ChangeMinionGatherType(Item newGatherItem)
    {
        
    }

    public void SetNewItem(int newItemNum)
    {
        ChangeMinionGatherType(findableItems.findableItems[newItemNum]);
    }
}
