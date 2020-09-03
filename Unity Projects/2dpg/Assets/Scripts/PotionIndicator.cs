using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PotionIndicator : MonoBehaviour
{
    public GameObject full;

    public void SetFull(bool value)
    {
        full.SetActive(value);
    }
}
