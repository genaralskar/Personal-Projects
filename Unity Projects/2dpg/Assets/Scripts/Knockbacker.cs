using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Knockbacker : MonoBehaviour, IKnockback
{
    private Rigidbody2D rb;

    private void Awake()
    {
        rb = GetComponent<Rigidbody2D>();
    }
    
    public void Knockback(Vector2 dir)
    {
        rb.AddForce(dir, ForceMode2D.Impulse);
    }
}
