using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spikes : MonoBehaviour
{
    public int damage = 1;
    public float force = 2f;
    public float xMod = 2f;
    
    private void OnTriggerEnter2D(Collider2D other)
    {
        if (!other.gameObject.GetComponent<PlayerHealth>().invicible)
        {
            //bounce player

            //Vector2 forceDirection = other.transform.position - transform.position;
            Vector2 forceDirection = transform.up;
            forceDirection = forceDirection.normalized;

            PlayerController player = other.GetComponentInChildren<PlayerController>();

            forceDirection.x *= xMod;
        
            other.GetComponent<Rigidbody2D>().AddForce(forceDirection * force, ForceMode2D.Impulse);
        }
        
        
        other.gameObject.GetComponent<PlayerHealth>().Damage(damage);
    }
}
