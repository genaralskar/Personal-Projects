using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Buildable : MonoBehaviour
{
    public List<Collider> colliders;

    public void StartBuilding()
    {
        foreach (var col in colliders)
        {
            col.enabled = false;
        }
        
    }
    
    public void PlaceBuilding()
    {
        foreach (var col in colliders)
        {
            col.enabled = true;
        }
    }
    
}
