using System.Collections;
using System.Collections.Generic;
using Cinemachine;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

public class Controller : MonoBehaviour
{
    //states
    //aim
    //charge
    //follow

    public BallController currentBall;
    
    public CinemachineVirtualCamera shotCam;
    public CinemachineVirtualCamera followCam;
    private CinemachineTransposer transposer;
    
    public Image chargeBar;
    public float chargeTime = 2;
    public AnimationCurve chargeCurve = AnimationCurve.Linear(0, 0, 1, 1);
    private float chargeTimer = 0;
    private bool charging = false;
    private float normalizedCharge = 0;

    public float maxForce = 10;

    private bool ballMoving = false;

    void Awake()
    {
        transposer = shotCam.GetCinemachineComponent<CinemachineTransposer>();
    }

    void Update()
    {
        if (!charging && Input.GetMouseButtonDown(0))
        {
            //StartCoroutine(ShotPower());
            Shoot(chargeCurve.Evaluate(normalizedCharge) * maxForce);
        }

        if (!ballMoving)
        {
            normalizedCharge += Input.GetAxis("Vertical") * Time.deltaTime;
            normalizedCharge = Mathf.Clamp01(normalizedCharge);
            chargeBar.fillAmount = normalizedCharge;
        }
    }

    private void StartTurn()
    {
        //set follow target
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
        charging = false;
    }

    private void Shoot(float force)
    {
        Vector3 direction = shotCam.transform.forward;
        direction.y = 0;
        currentBall.LaunchBall(direction, force);
        shotCam.gameObject.SetActive(false);
        followCam.gameObject.SetActive(true);
        currentBall.BallStopped += BallStoppedHandler;
        ballMoving = true;
    }

    private void BallStoppedHandler()
    {
        shotCam.gameObject.SetActive(true);
        followCam.gameObject.SetActive(false);
        chargeTimer = 0;
        ballMoving = false;
    }
}
