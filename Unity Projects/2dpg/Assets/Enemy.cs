using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Health))]
public class Enemy : MonoBehaviour
{
    public float moveSpeed = 4f;
    public bool aggresive = false;
    
    public Transform followTarget;
    public float attackRange = 1f;
    public Transform wanderCenter;
    public float wanderRadius;
    public float stopDistance = .5f;

    public bool follow = false;

    public bool canMove = true;
    public Health health;

    private Vector2 desiredPos;
    private Vector2 moveDir;

    private bool attacking = false;

    private Rigidbody2D rb;

    private void Awake()
    {
        rb = GetComponent<Rigidbody2D>();
        health = GetComponent<Health>();
        health.IFrameStart += IFrameStartHandler;
        health.IFrameEnd += IFrameEndHandler;
        health.Death += DeathHandler;
        
        StartCoroutine(NewWanderPos());

        
    }

    private void Start()
    {
        GetNewWanderPos();
    }

    private void FixedUpdate()
    {
        if(follow)
        {
            Follow();   
        }
        else
        {
            Wander();
        }
        
        Move();
    }
    
    private void Wander()
    {
        //get random position in range of center
    }

    private IEnumerator NewWanderPos()
    {
        WaitForEndOfFrame wait = new WaitForEndOfFrame();
        float timer = 0;
        while (true)
        {
            timer += Time.deltaTime;
            if (timer > 5f)
            {
                timer = 0f;
                if (!follow)
                {
                    desiredPos = GetNewWanderPos();
                }
            }
            yield return wait;
        }
    }

    private Vector2 GetNewWanderPos()
    {
        Vector2 newPos = Vector2.zero;
        newPos.x = Random.Range(-1f, 1f);
        newPos.y = Random.Range(-1f, 1f);

        return (Vector2)wanderCenter.position + (newPos * wanderRadius);
    }

    private void Follow()
    {
        desiredPos = followTarget.position;
        if (!InFollowRange())
        {
            follow = false;
            GetNewWanderPos();
            Wander();
            Debug.Log($"Out of range. Range: {DistanceToDesiredPos()}");
            return;
        }
        Attack();
    }

    public void TriggerAggro(Transform target)
    {
        follow = true;
        followTarget = target;
        Debug.Log($"New Aggro Target {target}");
    }

    private void Attack()
    {
        attacking = InAttackRange();
    }

    private void Move()
    {
        if (!canMove || InStoppingDistance()) return;
        
        //get direction
        moveDir = desiredPos - (Vector2) transform.position;
        moveDir = moveDir.normalized;
        //rb.MovePosition(rb.position + moveDir * moveSpeed * Time.fixedDeltaTime);
        if(rb.velocity.magnitude < moveSpeed)
            rb.AddForce(moveDir * moveSpeed * Time.fixedDeltaTime * 2000);
    }
    

    private void IFrameStartHandler()
    {
        Debug.Log("IFrame Start");
        canMove = false;
    }

    private void IFrameEndHandler()
    {
        Debug.Log("IFrame End");
        canMove = true;
    }

    private void DeathHandler()
    {
        StopAllCoroutines();
        gameObject.SetActive(false);
    }
    

    private void OnDrawGizmos()
    {
        Gizmos.DrawSphere(desiredPos, stopDistance);
        Gizmos.DrawWireCube(wanderCenter.position, Vector3.one * wanderRadius * 2);
    }
    
    
    private bool InAttackRange()
    {
        return DistanceToDesiredPos() < attackRange;
    }

    private bool InFollowRange()
    {
        return DistanceToDesiredPos() < wanderRadius;
    }

    private bool InStoppingDistance()
    {
        return DistanceToDesiredPos() < stopDistance;
    }

    private float DistanceToDesiredPos()
    {
        return Vector2.Distance(transform.position, desiredPos);
    }
}
