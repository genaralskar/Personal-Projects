using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JumpUI : MonoBehaviour
{

    private int currentJumps = 0;
    private List<GameObject> jumpUI;
    
    private void Awake()
    {
        PlayerController.JumpReset += JumpResetHandler;
    }

    private void OnDisable()
    {
        PlayerController.JumpReset -= JumpResetHandler;
    }

    private void JumpResetHandler(int amount)
    {
        if (amount == currentJumps) return;
    }
}
