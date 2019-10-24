using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class Pickup : MonoBehaviour
{
    public AudioSource pickupSound;
    public bool disableOnPickup = true;

    private void OnTriggerEnter2D(Collider2D other)
    {
        PlayerController player = other.GetComponent<PlayerController>();   
        OnPickUp(player);
        if (pickupSound != null) pickupSound.Play();
        if (disableOnPickup)
        {
            gameObject.SetActive(false);
        }
    }

    protected virtual void OnPickUp(PlayerController player)
    {
        
    }
}
