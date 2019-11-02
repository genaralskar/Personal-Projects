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

    public static void Shake(Transform obj)
    {
        StaticCoroutine.Start(ShakeCounter(obj, amount, duration, speed));
    }

    private static IEnumerator ShakeCounter(Transform objTransform, float shakeAmount = 10f, float shakeDuration = .5f, float shakeSpeed = 10f)
    {
        //check if transform is in list
        Vector2 origPos;
        if (CurrentlyShaking.ContainsKey(objTransform))
        {
            origPos = CurrentlyShaking[objTransform];
        }
        else
        {
            origPos = objTransform.position;
            CurrentlyShaking.Add(objTransform, objTransform.position);
        }
        
        float counter = shakeDuration;
        while(counter > 0)
        {
            //get perlin displacement
            float xDis = Mathf.PerlinNoise(Time.time * shakeSpeed, 1);
            float yDis = Mathf.PerlinNoise(1, Time.time * shakeSpeed);
            Vector2 dis = new Vector2(xDis, yDis);
            
            //set displacement from 0 <-> 1 to -1 <-> 1
            dis *= 2;
            dis -= Vector2.one;
            
            //get amount multiplier based on time
            float normalizedTime = counter / shakeDuration;

            float _amount = shakeAmount * Exponential(normalizedTime);
            
            //multiply displacement by amount
            dis *= _amount;
            
            //Debug.Log($"new Pos = {origPos + dis}. dis = {dis}. _amount = {_amount}, normalizedTime = {normalizedTime}, origPos = {origPos}");
            
            //displace
            objTransform.position = origPos + (dis);
            
            counter -= Time.deltaTime;
            yield return new WaitForEndOfFrame();
        }

        CurrentlyShaking.Remove(objTransform);

    }

    public static float Exponential(float input)
    {
        return input * input;
    }
}
