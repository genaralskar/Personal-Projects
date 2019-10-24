using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class Gravity
{
    public static float gravityAmount = 9.81f;
    public static Vector2 down = Vector2.down;
    
    public static Vector2 gravity
    {
        get { return down * gravityAmount; }
    }
    
    public static Vector2 up
    {
        get { return -down; }
    }

    public static void FlipGravity()
    {
        down *= -1;
    }
}
