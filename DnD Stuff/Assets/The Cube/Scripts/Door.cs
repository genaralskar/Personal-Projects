using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Door : MonoBehaviour
{
    public GameObject doorObj;

    public Crystal.CrystalColor doorColor = Crystal.CrystalColor.White;

    private void Awake()
    {
        Crystal.CrystalPlacedEvent += CrystalPlacedEventHandler;
        Crystal.CrystalRemovedEvent += CrystalRemovedEventHandler;
    }

    public void OpenDoor()
    {
        
        doorObj.SetActive(false);
    }

    public void CloseDoor()
    {
        doorObj.SetActive(true);
    }

    public void CrystalPlacedEventHandler(Crystal.CrystalColor color)
    {
        //Debug.Log($"{this}, {doorColor}:{color}");
        if (color == doorColor)
            OpenDoor();
    }

    public void CrystalRemovedEventHandler(Crystal.CrystalColor color)
    {
        if (color == doorColor)
            CloseDoor();
    }
}
