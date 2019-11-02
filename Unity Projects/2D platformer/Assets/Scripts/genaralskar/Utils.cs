using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace genaralskar
{
    public static class Utils
    {
        public static float Exponential(float input, int power)
        {
            float output = input;
            for (int i = 1; i < power; i++)
            {
                output *= output;
            }
            
            return output;
        }
    }    
}

