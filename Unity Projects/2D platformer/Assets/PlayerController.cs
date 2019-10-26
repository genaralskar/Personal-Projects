using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class PlayerController : MonoBehaviour
{
    private Rigidbody2D rb;
    private CircleCollider2D col;
    
    [Header("Movement")]
    public float moveSpeed = 2f;
    public float jumpForce = 3f;
    public bool canMove = true;
    //public float jumpTimeForgivness = .2f;
    public int jumpAmount = 1;
    public int maxJumps = 1;
    //public int resetJumps = 1;
    public float groundedDistance = 0.13f;
    public LayerMask groundedLayers;
    public ContactFilter2D cFilter;
    public bool useGravity = true;

    private Vector2 groundedRayOffset { get { return Gravity.down * transform.localScale.x * col.radius; } }
    private bool isGrounded = false;
    
    [Header("Fast Fall")]
    public float fastFallForce = 1;
    public float fastFallThreshold = 1;

    [Header("Drag")]
    [Range(0, 1)]
    public float xDrag = .1f;

    [Range(0, 1)]
    public float yDrag = 0f;

    public float airDragMod = .1f;

    private float xMove;
    private float yMove;
    private float lastGroundedTime;

    [Header("Sounds")]
    public AudioSource jumpSound;

    public AudioSource impactSound;

    private UnityAction Landed;
    private UnityAction Airborne;
    
    private void Awake()
    {
        rb = GetComponent<Rigidbody2D>();
        col = GetComponent<CircleCollider2D>();
        xDrag = 1 - xDrag;
        yDrag = 1 - yDrag;
        airDragMod = 1 - airDragMod;
        Airborne = AirborneHandler;
    }

    private void FixedUpdate()
    {
        if(useGravity)
            DoGravity();
        SetIsGrounded();
        if (canMove)
        {
            Move();
            FastFall();
            Drag();
        }
    }

    private void Update()
    {
        if(canMove)
            Jump();
    }

    private void OnCollisionEnter2D(Collision2D other)
    {
        if (other.relativeVelocity.magnitude > 2f)
        {
            impactSound.Play();
        }
    }

    private void Jump()
    {
        if (jumpAmount > 0 && Input.GetButtonDown("Jump"))
        {
            //Debug.Log(Time.time - lastGroundedTime);
            //rb.AddForce(Gravity.up * jumpForce, ForceMode2D.Impulse);
            Vector2 vel = rb.velocity;
            vel.y = jumpForce;
            rb.velocity = vel;
            jumpSound.Play();
            jumpAmount--;
            //Debug.Log("Jump");
        }
    }

    private void DoGravity()
    {
        rb.AddForce(Gravity.gravity);
        Debug.DrawRay(transform.position, Gravity.gravity, Color.blue);
    }

    private void SetIsGrounded()
    {
        isGrounded = IsGrounded();
    }
    
    private bool IsGrounded()
    {
        Vector2 currentPos = transform.position;
        float scale = transform.localScale.x;
        RaycastHit2D hit = Physics2D.Raycast((currentPos + groundedRayOffset), Gravity.down, groundedDistance * scale,
            groundedLayers, 0, 0);
        
        if (hit && hit.distance > groundedDistance * 0.1f)
        {
            lastGroundedTime = Time.time;
            Landed?.Invoke();
            return true;
        }

        Airborne?.Invoke();
        return false;
    }

    private void Move()
    {
        xMove = Input.GetAxis("Horizontal") * moveSpeed;
        yMove = 0;
        
        Vector2 moveVector = new Vector2(xMove, yMove);
        //moveVector = gravMan.transform.InverseTransformDirection(moveVector);
        
        Debug.DrawRay(transform.position, moveVector, Color.green);
        
        rb.AddForce(moveVector, ForceMode2D.Force);
    }

    private void FastFall()
    {
        
        //inversedirection or whatever of current gravity
        //Debug.Log(transform.InverseTransformDirection(Gravity.gravity));
        if (!useGravity) return;
        Vector2 vel = rb.velocity;
        
        if (vel.y < fastFallThreshold)
        {
            rb.AddForce(Gravity.down * fastFallForce);
        }
    }

    private void Drag()
    {
        Vector2 vel = rb.velocity;
        Debug.DrawRay(transform.position, vel, Color.red);
//        Debug.DrawRay(transform.position, test, Color.magenta);
//        Debug.DrawRay(transform.position, test2, Color.cyan);
        //Debug.Log(vel);

        if (isGrounded)
        {
            vel.x *= xDrag;
            vel.y *= yDrag;
        }
        else
        {
            if(xDrag < 1)
                vel.x *= (xDrag * airDragMod);
            if(yDrag < 1)
                vel.y *= (yDrag * airDragMod);
        }


        rb.velocity = vel;
    }

    private void LandedHandler()
    {
        ResetJump();
        Landed = null;
        Airborne += AirborneHandler;
        //Debug.Log("Landed!");
    }

    private void AirborneHandler()
    {
        Airborne = null;
        Landed += LandedHandler;
        //Debug.Log("Airborne!");
    }
    
    public void ResetJump()
    {
        jumpAmount = maxJumps;
        if (jumpAmount > maxJumps)
        {
            jumpAmount = maxJumps;
        }
    }
}
