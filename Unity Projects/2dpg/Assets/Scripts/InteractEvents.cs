using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class InteractEvents : MonoBehaviour, IInteractable
{
    public UnityEvent Interact;
    public void OnInteract()
    {
        Interact?.Invoke();
    }
}
