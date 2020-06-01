using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class PlayerInputs : MonoBehaviour
{
    public UnityAction LightAttack;
    public UnityAction HeavyAttack;
    public UnityAction Roll;
    public UnityAction Interact;
    
    public UnityAction<float> Horizontal;
    public UnityAction<float> Vertical;

    public Vector2 dirInput;
    public Vector2 facingDir;

    // Update is called once per frame
    void Update()
    {
        if(Input.GetButtonDown("LightAttack"))
            LightAttack?.Invoke();
        
        if(Input.GetButtonDown("HeavyAttack"))
            HeavyAttack?.Invoke();
        
        if(Input.GetButtonDown("Roll"))
            Roll?.Invoke();
        
        if(Input.GetButtonDown("Interact"))
            Interact?.Invoke();
        
        dirInput = new Vector2(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical"));
        
        Horizontal?.Invoke(dirInput.x);
        Vertical?.Invoke(dirInput.y);

        if (dirInput.sqrMagnitude > 0)
        {
            facingDir.x = dirInput.x;
        }
        if (dirInput.sqrMagnitude > 0)
        {
            facingDir.y = dirInput.y;
        }

        //facingDir = facingDir.normalized;


    }
}
