using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class ItemSelectionButtonUI : MonoBehaviour
{
    public Image itemImage;
    public TextMeshProUGUI itemName;
    public Item item;

    public void UpdateUI(Item newItem)
    {
        item = newItem;
        itemImage.sprite = item.image;
        itemName.text = newItem.name;
    }
}
