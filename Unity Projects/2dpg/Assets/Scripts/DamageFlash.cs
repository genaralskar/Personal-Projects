using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DamageFlash : MonoBehaviour
{
    public Health health;
    private SpriteRenderer rend;
    private Shader shaderGUIText;
    private Shader spriteDeafult;

    private void Awake()
    {
        rend = GetComponent<SpriteRenderer>();
        spriteDeafult = rend.material.shader;
        shaderGUIText = Shader.Find("GUI/Text Shader");

        //health.HealthModified += HealthUpdateHandler;
        health.IFrameStart += IFrameStartHandler;
        health.IFrameEnd += IFrameEndHandler;
    }

    private void HealthUpdateHandler(int amount)
    {
        if (amount >= 0) return;
        StartCoroutine(Flash());
    }

    private void IFrameStartHandler()
    {
        rend.material.shader = shaderGUIText;
    }

    private void IFrameEndHandler()
    {
        rend.material.shader = spriteDeafult;
    }

    private IEnumerator Flash()
    {
        float t = 0;
        WaitForEndOfFrame wait = new WaitForEndOfFrame();
        while (t < health.invincibleTime)
        {
            t += Time.deltaTime;

            rend.material.shader = shaderGUIText;
            
            yield return wait;
        }

        rend.material.shader = spriteDeafult;
    }
}
