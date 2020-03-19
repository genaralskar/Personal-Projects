using System;
using System.Collections;
using System.Collections.Generic;
using genaralskar.FPSInteract;
using UnityEngine;
using UnityEngine.Events;

[RequireComponent(typeof(Outline))]
public class Item : MonoBehaviour, IFPSInteract, IFPSLookAt
{
    public UnityAction ItemPickedUp;

    public bool active = true;
    
    public enum Size {Large, Medium, Small}
    public Size size = Size.Medium;
    
    
    public RenderTexture image;
    public int sortScore = 0;
    
    
    private ItemInventory itemInv;
    private ItemPicTaker pt;

    private Outline outline;
    
    private void Awake()
    {
        itemInv = FindObjectOfType<ItemInventory>();
        pt = FindObjectOfType<ItemPicTaker>();
        
        outline = GetComponent<Outline>();
        outline.OutlineMode = Outline.Mode.OutlineVisible;
        outline.OutlineWidth = 0;

        pt.GetPicture(this);
    }
    
    public void OnInteract(GameObject playerCamera, RaycastHit hit)
    {
        if (!active) return;
        itemInv.AddItem(this);
    }

    public void Disable()
    {
        transform.SetParent(null);
        transform.position = Vector3.down * 100;
    }

    public static int SortItem(Item i1, Item i2)
    {
        return i1.sortScore.CompareTo(i2.sortScore);
    }

    public void HighlightItem(bool highlight)
    {
        outline.OutlineWidth = highlight? 10: 0;
    }

    public void OnLook()
    {
        HighlightItem(true);
    }

    public void OnStopLook()
    {
        HighlightItem(false);
    }
}
