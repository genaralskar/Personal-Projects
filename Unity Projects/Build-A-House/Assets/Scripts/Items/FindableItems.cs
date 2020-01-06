using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Item/Findable Items List")]
public class FindableItems : ScriptableObject
{
    public List<Item> findableItems;
}
