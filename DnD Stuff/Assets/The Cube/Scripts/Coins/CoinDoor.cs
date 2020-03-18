using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoinDoor : CoinHolder
{
    public Door door;
    public int neededValue;

    public void CheckValue()
    {
        int v = 0;
        foreach (var coin in coins)
        {
            v += coin.value;
        }

        if (v == neededValue)
        {
            door.OpenDoor();
        }
        else
        {
            //something to indicate its wrong
        }
        ReturnCoins();
    }
}
