using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AirshipSpeedometer : MonoBehaviour
{
    private AirshipController c;

    public AirshipController.AirshipControllerType type;
    public float maxSpeed = 100f;
    public GameObject dial;

    private void Awake()
    {
        c = FindObjectOfType<AirshipController>();
    }

    private void Update()
    {
        //get rot
        float v = 0;
        switch(type)
        {
            case AirshipController.AirshipControllerType.moveX:
                v = c.speedX;
                break;
            case AirshipController.AirshipControllerType.moveY:
                v = c.speedY;
                break;
            case AirshipController.AirshipControllerType.moveZ:
                v = c.speedZ;
                break;
            default:
                v = 0;
                break;
        }

        //if one rotation is 100, 100 units = 360
        //normals v between 0 and 360 based on 100
        v = v / maxSpeed * 360;
        Vector3 rot = dial.transform.localRotation.eulerAngles;
        rot.y = v;
        dial.transform.localRotation = Quaternion.Euler(rot);
    }
}
