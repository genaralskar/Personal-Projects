using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AirshipController : MonoBehaviour
{
    public enum AirshipControllerType {moveX, moveY, moveZ, rotX, rotY, rotZ}

    public Rigidbody rb;

    //forward/backward
    public float speedZ;
    //up/down
    public float speedY;
    //port/starboard
    public float speedX;

    public float rotX;
    public float rotY;
    public float rotZ;

    public float lerpSpeed = .9f;
    public float rotSpeed = 10f;

    private AirshipControl currentControl;

    private Vector3 desiredRot = new Vector3();

    private void Update()
    {
        //deselect controls
        if (Input.GetButtonDown("Cancel"))
        {
            SelectControl(null);
        }

        //affect current control
        if(currentControl)
        {
            float v = Input.GetAxis("Vertical") + Input.GetAxis("Horizontal");
            v = Mathf.Clamp(v, -1, 1);
            currentControl.Input(v * Time.deltaTime);
        }
    }

    private void FixedUpdate()
    {
        //lerp
        rb.MoveRotation(Quaternion.Slerp(rb.rotation, Quaternion.Euler(desiredRot), lerpSpeed * Time.fixedDeltaTime));
    }

    public void AddRot(Vector3 rot)
    {
        desiredRot += rot;
    }

    public void SelectControl(AirshipControl c)
    {
        if(currentControl)
        {
            currentControl.Deselected();
        }

        currentControl = c;

        if(currentControl)
            currentControl.Selected();
    }

    public void SetValue(float value, AirshipControllerType type)
    {
        switch(type)
        {
            case AirshipControllerType.moveX:
                speedX += value * Time.deltaTime;
                break;
            case AirshipControllerType.moveY:
                speedY += value * Time.deltaTime;
                break;
            case AirshipControllerType.moveZ:

                speedZ += value * Time.deltaTime;
                break;
            case AirshipControllerType.rotX:
                rotX += value * Time.deltaTime;
                desiredRot.x = rotX;
                break;
            case AirshipControllerType.rotY:
                rotY += value * Time.deltaTime;
                desiredRot.y = rotY;
                break;
            case AirshipControllerType.rotZ:
                rotZ += value * Time.deltaTime;
                desiredRot.z = rotZ;
                break;
        }
    }

    public void ResetAllValues(bool doY = false)
    {
        speedX = 0;
        if(doY)
            speedY = 0;
        speedZ = 0;

        rotX = 0;
        rotY = 0;
        rotZ = 0;
    }
}
