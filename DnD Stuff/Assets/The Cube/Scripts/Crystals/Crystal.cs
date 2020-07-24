using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Crystal : Item
{
    public enum CrystalColor {Red1, Red2, Red3, Green1, Green2, Blue1, Blue2, Yellow, White}

    public CrystalColor color;

    public ParticleSystem part;

    public static UnityAction<CrystalColor> CrystalPlacedEvent;
    public static UnityAction<CrystalColor> CrystalRemovedEvent;

    private void Awake()
    {
        base.Awake();
        ItemPickedUp += ItemPickedUpHandler;
        ItemPlaced += ItemPlacedHandler;
        part = GetComponentInChildren<ParticleSystem>();
    }

    private void ItemPickedUpHandler()
    {

    }

    private void ItemPlacedHandler()
    {

    }

    public static bool ColorChecker(Crystal.CrystalColor color1, Crystal.CrystalColor color2)
    {
        Debug.Log($"Colors are {color1}, {color2}");
        if(color1 == CrystalColor.Red1 || color1 == CrystalColor.Red2 || color1 == CrystalColor.Red3)
        {
            if (color2 == CrystalColor.Red1 || color2 == CrystalColor.Red2 || color2 == CrystalColor.Red3)
            {
                Debug.Log("Colors Match Red!");
                return true;
            }
        }

        if (color1 == CrystalColor.Blue1 || color1 == CrystalColor.Blue2)
        {
            if (color2 == CrystalColor.Blue1 || color2 == CrystalColor.Blue2)
            {
                Debug.Log("Colors Match Blue!");
                return true;
            }
        }

        if (color1 == CrystalColor.Green1 || color1 == CrystalColor.Green2)
        {
            if (color2 == CrystalColor.Green1 || color2 == CrystalColor.Green2)
            {
                Debug.Log("Colors Match Green!");
                return true;
            }
        }

        if (color1 == CrystalColor.Yellow)
        {
            if(color2 == CrystalColor.Yellow)
            {
                Debug.Log("Colors Match Yellow!");
                return true;
            }
        }

        return false;
    }
}
