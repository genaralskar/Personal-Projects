using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInterator : MonoBehaviour
{
    private IInteractable _interactable;
    
    private void OnTriggerEnter2D(Collider2D col)
    {
        IInteractable i = col.GetComponent<IInteractable>();
        if (i != null)
            _interactable = i;
    }

    private void OnTriggerExit2D(Collider2D col)
    {
        IInteractable i = col.GetComponent<IInteractable>();
        if (i != null && i == _interactable)
            _interactable = null;
    }

    private void Update()
    {
        if(Input.GetButtonDown("Interact"))
        {
            _interactable?.OnInteract();
        }
    }
}
