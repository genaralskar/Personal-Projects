using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Candle : MonoBehaviour
{
    public ParticleSystem firePart;
    public ParticleSystem smokePart;

    private void Awake()
    {
        Blow.MaxBlow += MaxBlowHandler;
        Blow.RestartAction += RestartHandler;
    }

    private void MaxBlowHandler()
    {
        firePart.Stop();
        smokePart.Play();
    }

    private void RestartHandler()
    {
        firePart.Play();
        smokePart.Stop();
    }
}
