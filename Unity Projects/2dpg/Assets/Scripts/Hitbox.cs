using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hitbox : MonoBehaviour
{
    public int damage = 10;
    public bool knockback = true;
    public Transform kbPoint;
    public bool enemy = false;

    private void Awake()
    {
        if (!kbPoint)
            kbPoint = transform;
    }
    
    private void OnTriggerEnter2D(Collider2D other)
    {
        Health h = other.GetComponent<Health>();
        if (h)
        {
            if (h.enemy == enemy) return;
            h.ModifyHealth(-damage);
        }
        
        if (knockback)
        {
            Vector2 kbDir = other.transform.position - kbPoint.transform.position;
            kbDir = kbDir.normalized;
            kbDir *= damage * 10;
                
            var kb = other.GetComponent<IKnockback>();
            kb?.Knockback(kbDir);
        }
    }
}
