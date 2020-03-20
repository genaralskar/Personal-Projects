using System.Collections;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class Controller : MonoBehaviour
{
    public Image chargeBar;
    public float chargeTime = 2;
    public AnimationCurve chargeCurve = AnimationCurve.Linear(0, 0, 1, 1);
    private float chargeTimer = 0;
    private bool charging = false;
    private float normalizedCharge = 0;

    public float maxForce = .2f;

    public Blow blow;


    void Update()
    {
        if (!Blow.blowing) return;
        if (EventSystem.current.IsPointerOverGameObject()) return;
        if (!charging && Input.GetMouseButtonDown(0))
        {
            StartCoroutine(ShotPower());
            //Shoot(chargeCurve.Evaluate(normalizedCharge) * maxForce);
        }
    }

    private IEnumerator ShotPower()
    {
        charging = true;
        while (Input.GetMouseButton(0))
        {
            chargeTimer += Time.deltaTime;
            float pingPong = Mathf.PingPong(chargeTimer, chargeTime);
            normalizedCharge = pingPong / chargeTime;
            normalizedCharge = chargeCurve.Evaluate(normalizedCharge);
            chargeBar.fillAmount = normalizedCharge;
            yield return null;
        }

        chargeTimer = 0;
        
        Shoot(normalizedCharge * maxForce);
        
        yield return new WaitForSeconds(1f);
        blow.EndBlow();
        charging = false;
    }

    private void Shoot(float force)
    {
        blow.BlowIt(force);
    }
}
