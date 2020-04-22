using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Player : MonoBehaviour, IKnockback
{
    public static bool canMove = true;
    public static bool hasControl = true;
    
    private Rigidbody2D rb;
    private Vector2 moveVector;
    private Vector2 faceDir;
    private float currentSpeed;
    
    
    public Animator anims;
    public SpriteRenderer sprite;

    public float moveSpeed = 5f;

    [Header("Stamina")]
    public static UnityAction<float> StaminaRechargeAction;
    
    private float stamina = 100f;
    public float Stamina {
        get => stamina;
        set
        {
            if(value < stamina)
                StaminaRecharge();
            stamina = value;
            StaminaRechargeAction?.Invoke(stamina/maxStamina);
        }
    }
    private Coroutine sR;
    public float maxStamina = 100f;
    public float staminaRechageWait = 1f;
    public float staminaRechargeRate = 10f;
    
    [Header("Roll")]
    public float rollSpeed = 10f;

    public float rollStaminaDrain = 10f;
    public ParticleSystem rollParticles;
    

    private void Awake()
    {
        rb = GetComponent<Rigidbody2D>();
        moveVector = Vector2.zero;
    }

    // Update is called once per frame
    void Update()
    {
        if (hasControl)
        {
            moveVector.x = Input.GetAxis("Horizontal");
            if (Mathf.Abs(moveVector.x) > .01f)
            {
                faceDir.x = moveVector.x;
            }
        
            moveVector.y = Input.GetAxis("Vertical");
            if (Mathf.Abs(moveVector.y) > .01f)
            {
                faceDir.y = moveVector.y;
            }
            if(moveVector.sqrMagnitude > 1)
                moveVector = moveVector.normalized;
        }
        else
        {
            moveVector = Vector3.zero;
        }

        if (canMove && Input.GetButtonDown("Roll") && stamina > 0)
        {
            Roll();
        }
    }

    private void FixedUpdate()
    {
        currentSpeed = moveVector.sqrMagnitude;
        anims.SetFloat("Speed", currentSpeed);
        if (currentSpeed > .01f)
        {
            anims.SetFloat("Horizontal", moveVector.x);
            anims.SetFloat("Vertical", moveVector.y);
            sprite.flipX = moveVector.x < 0;
        }


        if (hasControl && canMove)
        {
            //Debug.Log($"rbsqrmag {rb.velocity.sqrMagnitude}, movespeedsqr {moveSpeed*moveSpeed}");
            if (rb.velocity.sqrMagnitude < moveSpeed * moveSpeed)
            {
                rb.MovePosition(rb.position + moveVector * moveSpeed * Time.fixedDeltaTime);
                //rb.AddForce(moveVector * moveSpeed * Time.fixedDeltaTime * 2000);
                //Debug.Log("Adding force");
            }
            else if(Vector2.Dot(rb.velocity, moveVector) < 1)
            {
                rb.AddForce(moveVector * 10);
            }
                
        }
            
    }

    public void Roll()
    {
        hasControl = false;
        Vector2 dir = new Vector2(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical"));
        //rb.AddForce(moveVector.normalized * 2, ForceMode2D.Impulse);
        rb.velocity = moveVector.normalized * rollSpeed;
        rollParticles.Play();
        Stamina -= rollStaminaDrain;
        Invoke("RegainControl", .2f);
    }

    public void Dash()
    {
        
    }
    
    public void Knockback(Vector2 dir)
    {
        float mag = dir.sqrMagnitude;
        float kbTime = 0;
        if (mag < 2)
        {
            kbTime = .1f;
        }
        else if (mag < 3)
        {
            kbTime = .5f;
        }
        else if (mag < 5)
        {
            kbTime = 1f;
        }
        else if (mag < 10)
        {
            kbTime = 1f;
        }
        else if (mag < 20)
        {
            kbTime = 2f;
        }
        
        Debug.Log($"Mag {mag}, dir {dir}");
        hasControl = false;
        rb.AddForce(dir, ForceMode2D.Impulse);
        Invoke("RegainControl", kbTime);
    }

    public void RegainControl()
    {
        hasControl = true;
        canMove = true;
    }

    private void StaminaRecharge()
    {
        if(sR != null)
            StopCoroutine(sR);
        sR = StartCoroutine(StaminaRegen());
    }

    private IEnumerator StaminaRegen()
    {
        yield return new WaitForSeconds(staminaRechageWait);
        WaitForEndOfFrame wait = new WaitForEndOfFrame();
        while (stamina < maxStamina)
        {
            Stamina = stamina + staminaRechargeRate * Time.deltaTime;
            yield return wait;
        }
    }
}
