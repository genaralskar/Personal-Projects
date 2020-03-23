using System.Collections;
using System.Collections.Generic;
using Cinemachine;
using UnityEngine;

public class ScreenShakeTest : MonoBehaviour
{
    public CinemachineImpulseSource s;

    // Update is called once per frame
    void Update()
    {
        if (Input.GetButtonDown("Cancel"))
        {
            s.GenerateImpulse();
        }
    }
}
