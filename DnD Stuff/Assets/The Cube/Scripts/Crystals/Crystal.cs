using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Crystal : Item
{
    public enum CrystalColor {Red, Green, Blue, Yellow}

    public CrystalColor color;
    
    public ParticleSystem part;

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
}
