using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StickPlayerToPlatform : MonoBehaviour
{
    private Transform lastParent;

    private void OnTriggerEnter2D(Collider2D other)
    {
        Debug.Log("Init!");
        StartCoroutine(Stick(other.attachedRigidbody));

        return;
        lastParent = other.transform.parent;
        other.transform.SetParent(transform);
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        StopCoroutine(Stick(other.attachedRigidbody));
        return;
        other.transform.SetParent(lastParent);
    }

    private IEnumerator Stick(Rigidbody2D rb)
    {
        while (true)
        {
            float offset = rb.position.x - transform.position.x;
            
            Vector2 newPos = rb.position;
            newPos.x = transform.position.x + offset;
            
            rb.MovePosition(newPos);
            
            yield return new WaitForFixedUpdate();
        }
    }
}
