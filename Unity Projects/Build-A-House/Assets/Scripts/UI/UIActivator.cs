using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIActivator : MonoBehaviour
{
    public Vector3 activePosition = Vector3.zero;
    public Vector3 inactivePosition = Vector3.down * 1000;
    public bool activeOnStart = false;

    private void Start()
    {
        if(activeOnStart)
            ActivateUI();
        else
            DeactiviateUI();
        
    }

    public void ActivateUI()
    {
        transform.localPosition = activePosition;
        Debug.Log("Activating UI");
    }

    public void DeactiviateUI()
    {
        transform.localPosition = inactivePosition;
    }
}
