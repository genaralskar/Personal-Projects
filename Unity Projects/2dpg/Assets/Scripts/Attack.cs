using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Attack : MonoBehaviour
{
    public Animator attackAnims;
    public GameObject sword;
    private PlayerInputs inputs;

    private void Awake()
    {
        inputs = GetComponent<PlayerInputs>();
        inputs.LightAttack += LightAttack;
    }

    private void Update()
    {
        //rotate sword to face dir
        float angle = Mathf.Atan2(inputs.facingDir.y, inputs.facingDir.x) * Mathf.Rad2Deg;
        sword.transform.rotation = Quaternion.AngleAxis(angle, Vector3.forward);
    }

    private void LightAttack()
    {
        if (attackAnims.GetBool("LightAttack"))
        {
            Debug.Log("Gotta Wait!");
            return;
        }

        //play animation
        
        attackAnims.SetTrigger("LightAttack");
    }

    private void HeavyAttack()
    {
        //stop player
        //charge for a bit
        //then attack
    }
}
