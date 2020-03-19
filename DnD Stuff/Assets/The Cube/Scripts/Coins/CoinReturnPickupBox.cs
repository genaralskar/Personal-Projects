using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoinReturnPickupBox : MonoBehaviour
{
    public CoinReturn cr;

    private void OnMouseDown()
    {
        cr.GrabCoins();
    }
}
