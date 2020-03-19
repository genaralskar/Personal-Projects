using System;
using System.Collections;
using System.Collections.Generic;
using genaralskar.FPSInteract;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

public class Item : MonoBehaviour, IFPSInteract
{
    public UnityEvent ItemPickedUp;

    public bool active = true;
    
    public enum Size {Large, Medium, Small}
    public Size size = Size.Medium;
    
    
    public RenderTexture image;
    public int sortScore = 0;
    
    
    private ItemInventory itemInv;
    private ItemPicTaker pt;
    
    private void Awake()
    {
        itemInv = FindObjectOfType<ItemInventory>();
        pt = FindObjectOfType<ItemPicTaker>();

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
}
