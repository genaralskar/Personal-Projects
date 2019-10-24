using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GravityManager : MonoBehaviour
{
    private void FixedUpdate()
    {
        Gravity.down = -transform.up;
    }

    public void FlipGravity()
    {
        Gravity.FlipGravity();
    }
}
