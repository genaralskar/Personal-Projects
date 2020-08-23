using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AirshipPitchIndicator : MonoBehaviour
{
    private AirshipController c;

    public GameObject indicator;

    public float maxDist = 1f;
    public float maxAngle = 45f;

    private void Awake()
    {
        c = FindObjectOfType<AirshipController>();
    }

    private void Update()
    {
        float v = c.rotX;

        float n = v / 45;

        n = Mathf.Clamp(n, -1, 1);

        float d = n * maxDist;

        Vector3 newPos = indicator.transform.localPosition;

        newPos.y = d;

        indicator.transform.localPosition = newPos;
    }
}
