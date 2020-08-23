using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class AirshipControl : MonoBehaviour
{
    protected AirshipController c;

    public bool isKnob = false;

    public AirshipController.AirshipControllerType type;

    public float valueMultiplier = 1f;

    public bool invertValue = false;

    protected virtual void Awake()
    {
        c = FindObjectOfType<AirshipController>();
    }

    protected virtual void Update()
    {
            SendInput();
    }

    public abstract void Selected();

    public abstract void Input(float input);

    public abstract float GetValue();

    public abstract void Deselected();

    protected virtual void SendInput()
    {
        c.SetValue(GetValue(), type);
    }
}
