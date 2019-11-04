using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovePlatform : MonoBehaviour
{
    public Transform pointA;
    public Transform pointB;
    public Rigidbody2D platform;
    public AnimationCurve curve;
    [Tooltip("How long the platform takes to complete a loop")]
    public float speed = 6f;

    private float timer = 0;

    
    
    private void FixedUpdate()
    {
        //return;
        timer += Time.fixedDeltaTime;
        if (timer >= speed)
        {
            timer = 0;
        }

        float timeNormalized = timer / speed;

        float t = curve.Evaluate(timeNormalized);
        Vector2 newPos = Vector2.Lerp(pointA.position, pointB.position, t);

        platform.transform.position = newPos;
        //platform.MovePosition(newPos);
    }

    private void LateUpdate()
    {
        return;
        timer += Time.deltaTime;
        if (timer >= speed)
        {
            timer = 0;
        }

        float timeNormalized = timer / speed;

        float t = curve.Evaluate(timeNormalized);
        Vector2 newPos = Vector2.Lerp(pointA.position, pointB.position, t);

        platform.transform.position = newPos;
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = Color.blue;
        if(pointA)
            Gizmos.DrawWireSphere(pointA.position, .25f);
        
        if(pointB)
            Gizmos.DrawWireSphere(pointB.position, .25f);
        
        if(pointA && pointB)
            Gizmos.DrawLine(pointA.position, pointB.position);
    }
}
