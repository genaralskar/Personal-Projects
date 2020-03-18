using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ItemUISlot : MonoBehaviour
{
    public Item item;
    public RawImage image;
    [HideInInspector] public ItemInventory inv;

    public void UpdateSlot(Item newItem)
    {
        item = newItem;
        if (item == null)
        {
            gameObject.SetActive(false);
            return;
        }
        else
        {
            gameObject.SetActive(true);
        }
        
        if(newItem.image)
            image.texture = newItem.image;

        Button button = GetComponent<Button>();
        button.onClick.RemoveAllListeners();
        button.onClick.AddListener(delegate { inv.SelectItem(item); });
    }
}
