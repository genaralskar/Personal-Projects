using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[RequireComponent(typeof(ItemDisplay))]
public class ItemDisplayCrystalEvents : MonoBehaviour
{
    private ItemDisplay id;

    public Crystal.CrystalColor color = Crystal.CrystalColor.Red1;

    public Vector3Int location;

    private void Awake()
    {
        id = GetComponent<ItemDisplay>();
        id.ItemPlaced += ItemPlacedHandler;
        id.ItemRemoved += ItemRemovedHandler;
    }

    private void ItemPlacedHandler(Item item)
    {
        Crystal c = item as Crystal;
        if (!c) return;

        CubeStatusTracker.UpdateCubeStatus?.Invoke(location, CubeStatusTracker.CrystalColorsToCubeStatus(c.color));

        //if crystal color matches event color
        if (Crystal.ColorChecker(c.color, color))
        {
            Debug.Log($"Invoking door opener with color {color}");
            Crystal.CrystalPlacedEvent?.Invoke(color);
        }
    }

    private void ItemRemovedHandler(Item item)
    {
        Crystal c = item as Crystal;
        if (!c) return;

        //if crystal color matches event color
        //if (Crystal.ColorChecker(c.color, color))
        //{
        Crystal.CrystalRemovedEvent?.Invoke(color);
        CubeStatusTracker.UpdateCubeStatus?.Invoke(location, CubeStatusTracker.CubeStatus.Empty);
        //}
    }

   
}
