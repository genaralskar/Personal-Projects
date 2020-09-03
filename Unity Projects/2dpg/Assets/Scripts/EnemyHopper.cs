using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyHopper : Enemy
{

    public float jumpTime = 1f;
    private float timer = 0;
    public Transform art;
    public AnimationCurve jumpCurve;
    public Collider2D hitbox;
    protected override void Move()
    {
        if (!canMove) return;
        if (!follow && InStoppingDistance()) return;

        if (timer >= jumpTime)
        {
            

            StartCoroutine(Jump());

            timer = 0f;
        }

        timer += Time.deltaTime;
    }

    private IEnumerator Jump()
    {
        Vector2 startPos = art.localPosition;
        art.localPosition = startPos + Vector2.down * .2f;
        float t = 0;
        while (t < .4f)
        {
            t += Time.deltaTime;
            yield return null;
        }

        t = 0;
        
        moveDir = desiredPos - (Vector2) transform.position;
        moveDir = moveDir.normalized;
            
        if(rb.velocity.magnitude < moveSpeed)
            rb.AddForce(moveDir * moveSpeed * Time.fixedDeltaTime * 2000, ForceMode2D.Impulse);

        hitbox.enabled = true;
        
        float jt = 1f;
        while (t < jt)
        {
            float p = jumpCurve.Evaluate(t / jt);
            Vector2 pos = Vector2.Lerp(startPos, startPos + Vector2.up, p);
            art.localPosition = pos;
            
            //collider
            if (t / jt > .5f)
            {
                hitbox.enabled = false;
            }

            
            t += Time.deltaTime;
            yield return null;
        }

        art.localPosition = startPos;
    }
}
