using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class CostPanelUI : MonoBehaviour
{
    public Image itemImage;
    public TextMeshProUGUI amountText;
    public Image itemPanelImage;

    public Color haveEnoughColor = Color.white;
    public Color notEnoughColor = Color.gray;
    public Sprite haveEnoughSprite;
    public Sprite notEnoughSprite;

    public void UpdatePanel(InventorySlot newSlot, int amount = 1)
    {
        itemImage.sprite = newSlot.item.image;
        amountText.text = (newSlot.amount * amount).ToString();

        InventorySlot itemCheck = Inventory.GetItemSlot(newSlot.item);

        //if the inventory has enough of the item to upgrade
        if (itemCheck != null && itemCheck.amount >= newSlot.amount * amount)
        {
            itemPanelImage.color = haveEnoughColor;
            itemPanelImage.sprite = haveEnoughSprite;
        }
        else
        {
            itemPanelImage.color = notEnoughColor;
            itemPanelImage.sprite = notEnoughSprite;
        }
    }
}
