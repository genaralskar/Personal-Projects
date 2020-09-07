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

    public OutfitSO outfit;

    private List<Equipment> equipment = new List<Equipment>();

    private void Awake()
    {
        equipment.Add(GetComponent<Equipment>());
        equipment.AddRange(GetComponentsInChildren<Equipment>());
    }

    private void Start()
    {
        foreach(var e in outfit.outift)
        {
            EquipItem(e);
        }
    }

    public void EquipItem(EquipmentSO item)
    {
        foreach(var e in equipment)
        {
            if (e.EquipmentType == item.Type)
            {
                e.Equip(item);
                break;
            }
        }
    }

    public void UpdateAnimatorFloat(string param, float value)
    {
        foreach(var e in equipment)
        {
            e.UpdateAnimatorFloat(param, value);
        }
    }
    public void UpdateAnimatorBool(string param, bool value)
    {
        foreach(var e in equipment)
        {
            e.UpdateAnimatorBool(param, value);
        }
    }
    

}
