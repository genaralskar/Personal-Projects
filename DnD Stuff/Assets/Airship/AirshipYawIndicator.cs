using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AirshipYawIndicator : MonoBehaviour
{
    private AirshipController c;

    public GameObject indicator;

    private void Awake()
    {
        c = FindObjectOfType<AirshipController>();
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 rot = indicator.transform.localRotation.eulerAngles;

        rot.x = -c.rotZ;

        indicator.transform.localRotation = Quaternion.Euler(rot);
    }
}
