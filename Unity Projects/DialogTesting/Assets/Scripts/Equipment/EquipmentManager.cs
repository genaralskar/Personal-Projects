using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class EquipmentManager : MonoBehaviour
{
    public UnityAction<Vector2> MoveEvent;
    public UnityAction<float> UpdateSpeedEvent;
    public UnityAction SlashEvent;
    public UnityAction LungeEvent;
    public UnityAction SpellcastEvent;
    public UnityAction ShootEvent;

    private List<Equipment> equipment = new List<Equipment>();

    private void Awake()
    {
        equipment.Add(GetComponent<Equipment>());
        equipment.AddRange(GetComponentsInChildren<Equipment>());
    }

    public void EquipItem(EquipmentSO item)
    {
        foreach(var e in equipment)
        {
            if (e.EquipmentType == item.Type)
            {
                e.Equip(item);
            }
        }
    }
}
