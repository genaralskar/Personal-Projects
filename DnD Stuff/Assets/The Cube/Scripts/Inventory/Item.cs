using System.Collections;
using System.Collections.Generic;
using genaralskar.FPSInteract;
using UnityEngine;
using UnityEngine.UI;

public class Item : MonoBehaviour, IFPSInteract
{
    public RenderTexture image;

    public ItemInventory itemInv;
    
    private void Awake()
    {
        itemInv = FindObjectOfType<ItemInventory>();
    }
    
    public void OnInteract(GameObject playerCamera, RaycastHit hit)
    {
        itemInv.AddItem(this);
    }

    public void Disable()
    {
        transform.position = Vector3.down * 100;
    }
}
