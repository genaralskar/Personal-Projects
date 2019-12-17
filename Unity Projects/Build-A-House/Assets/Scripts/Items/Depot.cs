using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Depot : ClickableObjectBase
{
    protected override void OnPlayerInRange()
    {
        DepositItems(player);
    }

    public void DepositItems(Controller controller)
    {
        foreach (var item in controller.items)
        {
            Inventory.AddItem(item.item, item.amount);
        }

        controller.ClearItems();
    }
}
