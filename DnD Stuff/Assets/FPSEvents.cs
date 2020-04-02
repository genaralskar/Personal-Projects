using System.Collections;
using System.Collections.Generic;
using genaralskar.FPSInteract;
using UnityEngine;
using UnityEngine.Events;

public class FPSEvents : MonoBehaviour, IFPSInteract
{
    public UnityEvent Interact;
    
    public void OnInteract(GameObject playerCamera, RaycastHit hit)
    {
        Interact?.Invoke();
    }
}
