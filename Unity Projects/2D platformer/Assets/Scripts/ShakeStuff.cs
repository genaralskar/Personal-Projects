using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// Give this a transform and it will shake it! use Shake()
/// </summary>
public static class ShakeStuff
{
    public static float amount = 10f;
    public static float duration = .5f;
    public static float speed = 10f;

    //private static List<Transform> currentlyShaking = new List<Transform>();

    private static readonly Dictionary<Transform, Vector2> CurrentlyShaking = new Dictionary<Transform, Vector2>();
    private static readonly Dictionary<Transform, Vector2> CShakingScale = new Dictionary<Transform, Vector2>();

    public static void Shake(Transform obj)
    {
        StaticCoroutine.Start(ShakeCounter(obj, true, amount, duration, speed));
    }

    private static IEnumerator ShakeCounter(Transform objTransform, bool shakeSize = true, float shakeAmount = 10f, float shakeDuration = .5f, float shakeSpeed = 10f)
    {
        //check if transform is in list
        Vector2 origPos;

        Vector2 origScale;
        
        if (CurrentlyShaking.ContainsKey(objTransform))
        {
            origPos = CurrentlyShaking[objTransform];
            origScale = CShakingScale[objTransform];
        }
        else
        {
            origPos = objTransform.position;
            CurrentlyShaking.Add(objTransform, objTransform.position);
            origScale = objTransform.localScale;
            CShakingScale.Add(objTransform, objTransform.localScale);
            Debug.Log($"Original Scale = {origScale}");
        }
        
        float counter = shakeDuration;
        while(counter > 0)
        {
            //get perlin displacement
            float xDis = Mathf.PerlinNoise(Time.time * shakeSpeed, 1);
            float yDis = Mathf.PerlinNoise(1, Time.time * shakeSpeed);
            Vector2 dis = new Vector2(xDis, yDis);
            
            float sizeDisAmount = Mathf.PerlinNoise(Time.time * shakeSpeed, Time.time * shakeSpeed);
            Vector2 sizeDis = new Vector2(sizeDisAmount, sizeDisAmount);
            
            //set displacement from 0 <-> 1 to -1 <-> 1
            dis *= 2;
            dis -= Vector2.one;
            
            //get amount multiplier based on time
            float normalizedTime = counter / shakeDuration;
            Debug.Log($"normalized time {normalizedTime}");

            float _amount = shakeAmount * Exponential(normalizedTime);
            Debug.Log($"Amount {_amount}");
            
            //multiply displacement by amount
            dis *= _amount;
            sizeDis *= _amount;
            
            //Debug.Log($"new Pos = {origPos + dis}. dis = {dis}. _amount = {_amount}, normalizedTime = {normalizedTime}, origPos = {origPos}");
            
            //displace
            objTransform.position = origPos + (dis);
            if(shakeSize)
                objTransform.localScale = origScale + sizeDis;
            
            counter -= Time.deltaTime;
            yield return new WaitForEndOfFrame();
        }

        CurrentlyShaking.Remove(objTransform);
        CShakingScale.Remove(objTransform);

    }

    public static float Exponential(float input)
    {
        return input * input;
    }
}
