using System.Collections;
using UnityEngine;
using UnityEngine.Events;

public class Blow : MonoBehaviour
{
    public static UnityAction MaxBlow;
    public static UnityAction RestartAction;
    public static UnityAction BlowEnd;
    
    [Header("Force Field Stuff")]
    public ParticleSystemForceField field;

    public float maxPower = .2f;
    public float rampTime = 1f;
    public float currentPower = 0;
    public AnimationCurve curve = AnimationCurve.Linear(0, 0, 1, 1);
    public float candleLimit = .17f;

    public GameObject blowBar;
    public GameObject resetButton;

    public static bool blowing = false;
    
    public void BlowIt(float force)
    {
        StopAllCoroutines();
        StartCoroutine(Blowing(force));
    }

    private IEnumerator Blowing(float force)
    {
        float timer = Time.time;
        WaitForEndOfFrame wait = new WaitForEndOfFrame();
        while (Time.time - timer < rampTime)
        {
            currentPower = curve.Evaluate((Time.time - timer) / rampTime);
            currentPower *= force;
            field.gravity = -currentPower;
            if (currentPower >= candleLimit)
            {
                //Debug.Log($"Current Power: {currentPower}. Candle Limit {candleLimit}");
                MaxBlow?.Invoke();
            }

            yield return wait;
        }

        field.gravity = 0;
        BlowEnd?.Invoke();
    }

    public void Restart()
    {
        RestartAction?.Invoke();
    }

    public void StartBlow()
    {
        blowing = true;
        //enable fillbar
        blowBar.SetActive(true);
    }

    public void EndBlow()
    {
        blowing = false;
        blowBar.SetActive(false);
        resetButton.SetActive(true);
    }
}
