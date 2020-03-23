using System.Collections;
using System.Collections.Generic;
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

    private Quaternion startRot;
    private Quaternion targetRot;

    private bool rotating;
    
    /// <param name="index">0 for middle, 1 for top</param>
    /// <param name="direction">0 for right, 1 for left</param>
    public void RotatePart(Transform part, int direction)
    {
        if (rotating) return;

        startRot = part.rotation;
        Vector3 currentRot = part.rotation.eulerAngles;
        currentRot.y += direction == 0 ? 90 : -90;
        //make sure the value stays a whole number because floats
        currentRot.y = Mathf.Round(currentRot.y);
        targetRot = Quaternion.Euler(currentRot);

        StartCoroutine(Rotate(part));
    }

    private IEnumerator Rotate(Transform piece)
    {
        rotating = true;
        RotatingStart?.Invoke();
        float timer = Time.time;
        WaitForEndOfFrame wait = new WaitForEndOfFrame();
        while (Time.time - timer < rotTimeSmall)
        {
            //normalized time
            float n = (Time.time - timer) / rotTimeSmall;
            Debug.Log($"n = {n}, timer = {timer}, time = {Time.time}");
            
            piece.rotation = Quaternion.Slerp(startRot, targetRot, rotCurve.Evaluate(n));
            
            
            
            yield return wait;
        }
        rotating = false;
        RotatingStop?.Invoke();
    }
}
