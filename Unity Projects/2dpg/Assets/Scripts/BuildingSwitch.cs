using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuildingSwitch : MonoBehaviour
{
    public List<GameObject> objsToSwitch;
    public bool disable = true;
    
    private void OnTriggerEnter2D(Collider2D other)
    {
        Switch();
    }

    private void Switch()
    {
        foreach (var obj in objsToSwitch)
        {
            obj.SetActive(!disable);
        }
    }
}
