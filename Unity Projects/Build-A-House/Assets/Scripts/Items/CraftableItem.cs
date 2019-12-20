using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Item/Craftable Item")]
public class CraftableItem : Item
{
    public float craftTime = 2f;
    
    public List<InventorySlot> reqMats;
    
    [Tooltip("Something might use 5 logs, but crafts 10 sticks. that's what this is for")]
    public int numberOfItemsPerCraft = 1;
}
