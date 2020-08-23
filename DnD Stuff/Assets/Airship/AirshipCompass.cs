using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AirshipCompass : MonoBehaviour
{
    private AirshipController c;

    public GameObject compass;
    public Transform airBase;

    private void Awake()
    {
        c = FindObjectOfType<AirshipController>();
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 rot = compass.transform.localRotation.eulerAngles;
        rot.y = -airBase.rotation.eulerAngles.y;
        compass.transform.localRotation = Quaternion.Euler(rot);
    }
}
