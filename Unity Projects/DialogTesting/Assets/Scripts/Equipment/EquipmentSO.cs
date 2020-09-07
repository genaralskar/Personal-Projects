using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Equipment/New Equipment")]
public class EquipmentSO : ScriptableObject
{
    [SerializeField]
    private AnimatorOverrideController overrideController;
    public AnimatorOverrideController OverrideController => overrideController;

    [SerializeField]
    private Equipment.Type type;
    public Equipment.Type Type => type;
}
