using System;
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public class Spikes : MonoBehaviour
{
    public int damage = 1;
    public float force = 2f;
    public float xMod = 2f;
    
    [Header("Creating stuff")]
    public int length = 3;
    public float colliderFudge = .1f;
    public Sprite spikeSprite;
    public BoxCollider2D col;

    private int currentLength = 0;

    public List<GameObject> spikes;

    private void Awake()
    {
//        SpriteRenderer[] newSpikes = gameObject.GetComponentsInChildren<SpriteRenderer>();
//        foreach (var spike in newSpikes)
//        {
//            spikes.Add(spike.gameObject);
//        }

        //currentLength = newSpikes.Length;
    }

//    private void OnValidate()
//    {
//        if (currentLength != length)
//        {
//            SetSpikes();
//        }
//    }

    [ContextMenu("Setup Spikes")]
    public void SetSpikes()
    {
        //remove current spikes
        foreach (var spike in spikes)
        {
           DestroyImmediate(spike);
        }
        spikes = new List<GameObject>();

        //spawn new ones and move them
        float xOffset = -((float)length/2 - 0.5f);
        //if number is even move it over .5f
        if (length % 2 == 0)
        {
            //xOffset -= 0.5f;
        }

        for (int i = 0; i < length; i++)
        {
            GameObject newSprite = SpriteGO();
            Vector2 newPos = new Vector2(xOffset + i, 0);
            newSprite.transform.localRotation = Quaternion.identity;
            newSprite.transform.localPosition = newPos;
            spikes.Add(newSprite);
        }

        //resize and reposition collider
        Vector2 newSize = col.size;
        newSize.x = length - colliderFudge;
        col.size = newSize;
    }

    private GameObject SpriteGO()
    {
        GameObject obj = new GameObject("Spike");
        obj.transform.SetParent(transform);
        SpriteRenderer sr = obj.AddComponent<SpriteRenderer>();
        sr.sprite = spikeSprite;

        return obj;
    }

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

    private void OnDrawGizmosSelected()
    {
        Gizmos.matrix = transform.localToWorldMatrix;
        Gizmos.color = Color.green;
        Gizmos.DrawWireCube(col.offset, new Vector2(length, col.size.y));
    }
}
