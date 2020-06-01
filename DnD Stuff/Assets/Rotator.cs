using System.Collections;
using System.Collections.Generic;
using Cinemachine;
using UnityEngine;
using UnityEngine.Events;

public class Rotator : MonoBehaviour
{
    public static UnityAction RotateSmallStart;
    public static UnityAction RotateSmallStop;
    public static UnityAction RotateBigStart;
    public static UnityAction RotateBigStop;
    
    public Transform topBig;
    public Transform topSmall;
    public Transform middleBig;
    public Transform middleSmall;

    public float rotTimeSmall = .5f;
    public float rotTimeBig = 5f;
    
    public AnimationCurve rotCurve = AnimationCurve.EaseInOut(0, 0, 1, 1);

    public CinemachineImpulseSource ss;

    private Quaternion startRotTop;
    private Quaternion targetRotTop;

    private Quaternion startRotMid;
    private Quaternion targetRotMid;

    private bool rotatingTop;
    private bool rotatingMid;

    private static int rotNum = 0;

    private void Awake()
    {
        ss.m_ImpulseDefinition.m_TimeEnvelope.m_SustainTime = rotTimeBig;
    }
    
    /// <param name="piece">0 for top, 1 for middle</param>
    /// <param name="direction">0 for right, 1 for left</param>
    public void RotatePart(Transform part, int direction, int piece)
    {
        if (piece == 0)
        {
            //top
            if (rotatingTop) return;
            
            startRotTop = part.rotation;
            Vector3 currentRot = part.rotation.eulerAngles;
            currentRot.y += direction == 0 ? 90 : -90;
            //make sure the value stays a whole number because floats
            currentRot.y = Mathf.Round(currentRot.y);
            targetRotTop = Quaternion.Euler(currentRot);

            StartCoroutine(RotateTopSmall());
            StartCoroutine(RotateTopBig());
        }
        else
        {
            //mid
            if (rotatingMid) return;
            
            startRotMid = part.rotation;
            Vector3 currentRot = part.rotation.eulerAngles;
            currentRot.y += direction == 0 ? 90 : -90;
            //make sure the value stays a whole number because floats
            currentRot.y = Mathf.Round(currentRot.y);
            targetRotMid = Quaternion.Euler(currentRot);

            StartCoroutine(RotateMidSmall());
            StartCoroutine(RotateMidBig());
        }
        

        
    }

    private IEnumerator RotateTopSmall()
    {
        rotatingTop = true;
        RotateSmallStart?.Invoke();
        float timer = Time.time;
        WaitForEndOfFrame wait = new WaitForEndOfFrame();
        while (Time.time - timer < rotTimeSmall)
        {
            //normalized time
            float n = (Time.time - timer) / rotTimeSmall;
            //Debug.Log($"n = {n}, timer = {timer}, time = {Time.time}");
            
            topSmall.rotation = Quaternion.Slerp(startRotTop, targetRotTop, rotCurve.Evaluate(n));
            
            yield return wait;
        }
        rotatingTop = false;
        RotateSmallStop?.Invoke();
    }
    
    private IEnumerator RotateTopBig()
    {
        if(rotNum == 0) RotateBigStart?.Invoke();
        rotNum += 1;
        float timer = Time.time;
        WaitForEndOfFrame wait = new WaitForEndOfFrame();
        ss.GenerateImpulse();
        while (Time.time - timer < rotTimeBig)
        {
            //normalized time
            float n = (Time.time - timer) / rotTimeBig;
            //Debug.Log($"n = {n}, timer = {timer}, time = {Time.time}");
            
            topBig.rotation = Quaternion.Slerp(startRotTop, targetRotTop, rotCurve.Evaluate(n));
            
            
            yield return wait;
        }
        rotNum -= 1;
        CheckRotAction();
        
    }
    
    private IEnumerator RotateMidSmall()
    {
        rotatingMid = true;
        RotateSmallStart?.Invoke();
        float timer = Time.time;
        WaitForEndOfFrame wait = new WaitForEndOfFrame();
        while (Time.time - timer < rotTimeSmall)
        {
            //normalized time
            float n = (Time.time - timer) / rotTimeSmall;
            //Debug.Log($"n = {n}, timer = {timer}, time = {Time.time}");
            
            middleSmall.rotation = Quaternion.Slerp(startRotMid, targetRotMid, rotCurve.Evaluate(n));
            
            yield return wait;
        }
        rotatingMid = false;
        RotateSmallStop?.Invoke();
    }
    
    private IEnumerator RotateMidBig()
    {
        if(rotNum == 0) RotateBigStart?.Invoke();
        rotNum += 1;
        float timer = Time.time;
        WaitForEndOfFrame wait = new WaitForEndOfFrame();
        ss.GenerateImpulse();
        while (Time.time - timer < rotTimeBig)
        {
            //normalized time
            float n = (Time.time - timer) / rotTimeBig;
            //Debug.Log($"n = {n}, timer = {timer}, time = {Time.time}");
            
            middleBig.rotation = Quaternion.Slerp(startRotMid, targetRotMid, rotCurve.Evaluate(n));
            
            yield return wait;
        }
        rotNum -= 1;
        CheckRotAction();
    }

    private void CheckRotAction()
    {
        if (rotNum <= 0)
        {
            RotateBigStop?.Invoke();
        }

        if (rotNum < 0)
            rotNum = 0;
    }
}
