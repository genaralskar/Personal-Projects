using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShakeHeart : MonoBehaviour
{
    public float amount = 1f;
    public float duration = .5f;
    public float shakeSpeed = 1f;

    public Transform objToShake;

    private void Start()
    {
        Shake(objToShake);
    }

    public void Shake(Transform objToShake)
    {
        StartCoroutine(ShakeCounter(objToShake));
    }

    private IEnumerator ShakeCounter(Transform objTransform)
    {
        Vector2 origPos = objTransform.position;
        float counter = duration;
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
            float normalizedTime = counter / duration;

            float _amount = amount * Exponential(normalizedTime);
            
            //multiply displacement by amount
            dis *= _amount;
            
            //Debug.Log($"new Pos = {origPos + dis}. dis = {dis}. _amount = {_amount}, normalizedTime = {normalizedTime}, origPos = {origPos}");
            
            //displace
            objTransform.position = origPos + (dis);
            
            counter -= Time.deltaTime;
            yield return new WaitForEndOfFrame();
        }
        
    }

    private float Exponential(float input)
    {
        return input * input;
    }
}
