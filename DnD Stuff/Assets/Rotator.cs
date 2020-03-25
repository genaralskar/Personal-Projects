using System.Collections;
using System.Collections.Generic;
using Cinemachine;
using UnityEngine;
using UnityEngine.Events;

public class Rotator : MonoBehaviour
{
    public static UnityAction RotatingStart;
    public static UnityAction RotatingStop;
    
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

    private void Awake()
    {
        ss.m_ImpulseDefinition.m_TimeEnvelope.m_SustainTime = rotTimeBig;
    }
    
    /// <param name="index">0 for middle, 1 for top</param>
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
        RotatingStart?.Invoke();
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
        RotatingStop?.Invoke();
    }
    
    private IEnumerator RotateTopBig()
    {
        RotatingStart?.Invoke();
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
        RotatingStop?.Invoke();
    }
    
    private IEnumerator RotateMidSmall()
    {
        rotatingMid = true;
        RotatingStart?.Invoke();
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
        rotatingTop = false;
        RotatingStop?.Invoke();
    }
    
    private IEnumerator RotateMidBig()
    {
        RotatingStart?.Invoke();
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
        RotatingStop?.Invoke();
    }
}
