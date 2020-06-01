using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[RequireComponent(typeof(ItemDisplay))]
public class ItemDisplayEvents : MonoBehaviour
{
    public UnityEvent ItemActivated;
    public UnityEvent ItemDeactivated;
    public List<Item> itemCheck;
    public Crystal.CrystalColor crystalColor;
    [HideInInspector] public bool hasCrystal = false;
    public Crystal.CrystalColor currentCrystalColor;
    
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
            hasCrystal = true;
            currentCrystalColor = c.color;
            if (c.color == crystalColor)
            {
                ItemActivated.Invoke();
            }
            return;
        }
        currentCrystalColor = Crystal.CrystalColor.White;
        hasCrystal = false;

        foreach(var i in itemCheck)
        {
            if (item == i)
            {
                ItemActivated.Invoke();
                return;
            }
        }
        
        ItemDeactivated?.Invoke();
    }

    private void ItemRemovedHandler(Item item)
    {
        currentCrystalColor = Crystal.CrystalColor.White;
        hasCrystal = false;
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