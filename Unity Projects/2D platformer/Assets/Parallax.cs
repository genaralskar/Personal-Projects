using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Parallax : MonoBehaviour
{
    public Transform followTarget;
    public Vector2 parallaxAmount;

    private Vector2 startPos;
    private Vector2 followStartPos;

    private void Awake()
    {
        startPos = transform.position;
        followStartPos = followTarget.position;
    }

    private void Update()
    {
        Move();
    }

    private void Move()
    {

        Vector2 targetPos = followTarget.position;
        Vector2 currentPos = transform.position;
        Vector2 targetDir = targetPos - followStartPos;

        Vector2 newPos = startPos + targetDir * parallaxAmount;
        transform.position = newPos;

//        Vector2 newPos = startPos;
//        Vector2 currentPos = transform.position;
//        //direction + distance * parallax amount
//        Vector2 direction = startPos - currentPos;
//        float distance = Vector2.Distance(startPos, followTarget.transform.position);
//        newPos += direction * distance * parallaxAmount;
//        transform.position = newPos;
    }
}
