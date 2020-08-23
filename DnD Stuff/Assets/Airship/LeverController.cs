using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LeverController : AirshipControl
{
    public float moveRange = 1f;
    public float moveSpeed = 1f;
    public float deadZone = .2f;
    public GameObject lever;
    public GameObject hand;

    public override void Selected()
    {
        hand.SetActive(true);
    }

    public override void Input(float input)
    {
        //Debug.Log("lever input: " + input);
        Vector3 newPos = lever.transform.localPosition;
        newPos.x += -input * moveSpeed;
        newPos.x = Mathf.Clamp(newPos.x, -moveRange, moveRange);

        lever.transform.localPosition = newPos;
    }

    public override void Deselected()
    {
        hand.SetActive(false);
    }

    public override float GetValue()
    {
        float p = -lever.transform.localPosition.x;
        float n = p / moveRange;
        if (Mathf.Abs(n) <= deadZone) return 0;

        if (invertValue)
            n *= -1;

        return n * valueMultiplier;
    }
}
