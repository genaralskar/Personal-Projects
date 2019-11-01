using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AddHeartLoop : MonoBehaviour
{
    public PlayerHealth health;
    public ShakeHeart shake;
    public int maxHealth = 500;
    public float fillTime = 10f;

    public AnimationCurve addCurve;
    
    public float addSpeed = 0.1f;


    private void Start()
    {
        StartCoroutine(Grow());
    }

    private IEnumerator Grow()
    {
        float startTime = Time.time;
        
        
        
        
        for (int i = 0; i < maxHealth; ++i)
        {
            health.SetMaxHealth(i * 2);

            float normalizedTime = (Time.time - startTime) / fillTime;
            if (Time.time == startTime)
            {
                normalizedTime = 0f;
            }
            
            float speed = (fillTime/maxHealth) * addCurve.Evaluate(1 - normalizedTime);
            Debug.Log($"Speed = {speed}, normalizedtime = {normalizedTime}, curveTime = {addCurve.Evaluate(normalizedTime)}");
            
            yield return new WaitForSeconds(speed);
        }
    }
}
