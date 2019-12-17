using TMPro;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(TextMeshProUGUI))]
public class ItemUI : MonoBehaviour
{
    public TextMeshProUGUI nameText;
    public TextMeshProUGUI amountText;
    public Image itemImage;
    public InventorySlot slot;

    public void UpdateUI(InventorySlot newSlot)
    {
        if (slot.item != newSlot.item)
        {
            nameText.text = newSlot.item.name;
            itemImage.sprite = newSlot.item.image;    
        }
        
        amountText.text = newSlot.amount.ToString();
    }

    public void SetSlot(InventorySlot newSlot)
    {
        //Debug.Log("Setting slot");
        //Debug.Log($"newSlot amount = {newSlot.amount}");
        
        UpdateUI(newSlot);
        slot = newSlot;
    }
}
