using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Confetti : MonoBehaviour
{
    public ParticleSystem confetti;
    public ParticleSystem con2;
    public ParticleSystem con3;

    private bool boom = false;

    private void Awake()
    {
        Blow.MaxBlow += MaxBlowHandler;
        Blow.RestartAction += RestartHandler;
    }

    private void MaxBlowHandler()
    {
        if (boom) return;
        boom = true;
        confetti.Play();
        con2.Play();
        con3.Play();
    }

    private void RestartHandler()
    {
        confetti.Stop();
        boom = false;
    }
    
}
