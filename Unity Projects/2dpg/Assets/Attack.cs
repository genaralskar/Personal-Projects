using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Attack : MonoBehaviour
{
    public Hitbox hb;
    public Animator attackAnims;
    private PlayerInputs inputs;

    private void Awake()
    {
        inputs = GetComponent<PlayerInputs>();
        inputs.LightAttack += LightAttack;
    }
    
    private void LightAttack()
    {
        if (attackAnims.GetBool("Attack"))
        {
            Debug.Log("Gotta Wait!");
            return;
        }
        
        if (inputs.dirInput.sqrMagnitude > .01f)
        {
            Vector2 d = inputs.dirInput.normalized;
            attackAnims.SetFloat("Horizontal", d.x);
            attackAnims.SetFloat("Vertical", d.y);
        }
        
        attackAnims.SetTrigger("Attack");
    }

    private void HeavyAttack()
    {
        //stop player
        //charge for a bit
        //then attack
    }
}
