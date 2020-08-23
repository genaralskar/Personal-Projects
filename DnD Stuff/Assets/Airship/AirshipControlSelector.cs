using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AirshipControlSelector : MonoBehaviour
{
    private AirshipController c;

    public AirshipControl control;

    private void Awake()
    {
        c = FindObjectOfType<AirshipController>();  
    }

    private void OnMouseDown()
    {
        c.SelectControl(control);
    }
}
