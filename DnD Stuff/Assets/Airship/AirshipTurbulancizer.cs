using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AirshipTurbulancizer : MonoBehaviour
{
    private AirshipController c;

    public Vector3[] rotVectors;
    public Vector3[] moveVectors;

    public int currentVector = 0;

    public float rampUpSpeed = 2f;
    public float force = 1f;

    private Coroutine co;

    private void Awake()
    {
        c = FindObjectOfType<AirshipController>();
    }

    private void Start()
    {
        co = StartCoroutine(SendValues());
    }

    private void Update()
    {
        if (Input.GetKey(KeyCode.Alpha0))
        {
            currentVector = 0;
        }
        if (Input.GetKey(KeyCode.Alpha1))
        {
            currentVector = 1;
        }
        if (Input.GetKey(KeyCode.Alpha2))
        {
            currentVector = 2;
        }
        if (Input.GetKey(KeyCode.Alpha3))
        {
            currentVector = 3;
        }
        if (Input.GetKey(KeyCode.Alpha4))
        {
            currentVector = 4;
        }
        if(Input.GetKey(KeyCode.Alpha7))
        {
            currentVector = 0;
            c.ResetAllValues();
        }
    }

    private IEnumerator SendValues()
    {
        float speed = 0;
        float timer = 0;
        int previousIndex = currentVector;

        Vector3 v = Vector3.zero;
        Vector3 m = Vector3.zero;

        while(true)
        {
            if (currentVector != previousIndex) speed = 0;
            yield return new WaitForEndOfFrame();

            if(c.rotX > rotVectors[currentVector].x)
            {
                v.x *= -1;
            }
            if (c.rotY > rotVectors[currentVector].y)
            {
                v.y *= -1;
            }
            if (c.rotZ > rotVectors[currentVector].z)
            {
                v.z *= -1;
            }

            c.SetValue(v.x, AirshipController.AirshipControllerType.rotX);
            c.SetValue(v.y, AirshipController.AirshipControllerType.rotY);
            c.SetValue(v.z, AirshipController.AirshipControllerType.rotZ);

            c.SetValue(m.x, AirshipController.AirshipControllerType.moveX);
            c.SetValue(m.y, AirshipController.AirshipControllerType.moveY);
            c.SetValue(m.z, AirshipController.AirshipControllerType.moveZ);


            //up timer
            speed = EvalRampUp(timer);
            speed = Mathf.Clamp(speed, 0, 1);
            //Debug.Log("Speed " + speed);
            v = rotVectors[currentVector] * speed * force * Time.deltaTime;
            m = moveVectors[currentVector] * speed * Time.deltaTime;
            timer += Time.deltaTime;
        }
    }

    private float EvalRampUp(float value)
    {
        float n = value / rampUpSpeed;
        n *= n;
        return n;
    }
}
