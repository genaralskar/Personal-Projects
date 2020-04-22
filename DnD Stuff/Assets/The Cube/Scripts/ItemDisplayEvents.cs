using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[RequireComponent(typeof(ItemDisplay))]
public class ItemDisplayEvents : MonoBehaviour
{
    public UnityEvent ItemActivated;
    public UnityEvent ItemDeactivated;
    public Item itemCheck;
    public Crystal.CrystalColor crystalColor;
    
    private ItemDisplay id;

    private void Awake()
    {
        id = GetComponent<ItemDisplay>();
        id.ItemPlaced += ItemPlacedHandler;
        id.ItemRemoved += ItemRemovedHandler;
    }

    private void ItemPlacedHandler(Item item)
    {
        //Debug.Log($"item: {item}");
        Crystal c = item as Crystal;
        if (c)
        {
            if (c.color == crystalColor)
            {
                ItemActivated.Invoke();
                return;
            }
        }
        if (item == itemCheck)
        {
            ItemActivated.Invoke();
            return;
        }
        ItemDeactivated?.Invoke();
    }

    private void ItemRemovedHandler(Item item)
    {
        ItemDeactivated?.Invoke();
        //Debug.Log("Item removed");
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.green;
        genaralskar.DrawEventLines.Draw(ItemActivated, transform);
        //Draw(NewItem, transform);
    }
}