using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KnobController : AirshipControl
{
    public GameObject knob;
    public GameObject hand;

    public float rotSpeed = 360f;

    private float previousRotValue = 0;
    private float rotValue = 0;

    private float _input;

    public override void Deselected()
    {
        hand.SetActive(false);
    }

    public override float GetValue()
    {
        float v = rotValue - previousRotValue;
        //v = _input;
        if (invertValue)
            v *= -1;

        //Debug.Log("output " + (v * valueMultiplier) + "value multi: " + valueMultiplier);

        previousRotValue = rotValue;
        return v * valueMultiplier;
    }

    public override void Input(float input)
    {
        //Debug.Log("knob Input " + input);
        rotValue += input * 100;
        //rotate
        Vector3 currentRot = knob.transform.localRotation.eulerAngles;
        currentRot.y += input * rotSpeed;

        knob.transform.localRotation = Quaternion.Euler(currentRot);

        //knob.transform.Rotate(Vector3.up * input * rotSpeed * Time.deltaTime);
    }

    public override void Selected()
    {
        hand.SetActive(true);
    }
}
