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
    
    public enum States {Normal, Attacking, Rolling, Sliding, NoInputs, Dialog, Statue}

    public States state;
    
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
        GetInputs();
    }

    private void FixedUpdate()
    {

        if (state == States.Normal)
        {
            SetAnims(moveVector);
            Move();
        }

        if (state == States.Rolling)
        {
            
        }

        if (state == States.Sliding)
        {
            //can slow down if holding opposite direction of velocity
            if(Vector2.Dot(rb.velocity, moveVector) < 1)
            {
                rb.AddForce(moveVector * 10);
            }

            if (rb.velocity.magnitude <= moveSpeed * moveSpeed)
            {
                state = States.Normal;
            }
        }

        if (state == States.Attacking)
        {
            
        }

        if (state == States.Dialog)
        {
            rb.velocity = Vector2.zero;
            SetAnims(Vector2.zero);
            
            if (!DialogManager.DialogActive)
                state = States.Normal;
        }

        if (state == States.Statue)
        {
            rb.velocity = Vector2.zero;
        }

        if (state == States.NoInputs)
        {
            
        }

    }

    private void GetInputs()
    {

        currentSpeed = moveVector.sqrMagnitude;

        if (DialogManager.DialogActive)
        {
            state = States.Dialog;
            return;
        }
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
    
    
    private void SetAnims(Vector2 movement)
    {
        float cSpeed = movement.sqrMagnitude;
        anims.SetFloat("Speed", cSpeed);
        if (currentSpeed > .01f)
        {
            anims.SetFloat("Horizontal", movement.x);
            anims.SetFloat("Vertical", movement.y);
            if (Mathf.Abs(movement.x)> Mathf.Abs(movement.y))
            {
                sprite.flipX = moveVector.x < 0;
            }
            else
            {
                sprite.flipX = false;
            }
        }
    }

    private void Move()
    {
        if (rb.velocity.sqrMagnitude < moveSpeed * moveSpeed)
        {
            rb.MovePosition(rb.position + moveVector * moveSpeed * Time.fixedDeltaTime);
            //rb.AddForce(moveVector * moveSpeed * Time.fixedDeltaTime * 2000);
        }
        //can slow down if holding opposite direction of velocity
        else if(Vector2.Dot(rb.velocity, moveVector) < 1)
        {
            rb.AddForce(moveVector * 10);
        }
    }

    private void Roll()
    {
        state = States.Rolling;
        hasControl = false;
        Vector2 dir = new Vector2(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical"));
        //rb.AddForce(moveVector.normalized * 2, ForceMode2D.Impulse);
        rb.velocity = moveVector.normalized * rollSpeed;
        rollParticles.Play();
        Stamina -= rollStaminaDrain;
        Invoke("RegainControl", .2f);
    }
    
    
    public void Knockback(Vector2 dir)
    {
        state = States.Sliding;
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
        else
        {
            kbTime = .5f;
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
        state = States.Normal;
        Debug.Log("Regain Control");
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
