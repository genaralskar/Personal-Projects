using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MatchRotation : MonoBehaviour
{
    public Transform toMatch;

    private void FixedUpdate()
    {
        transform.rotation = toMatch.rotation;
    }
}
