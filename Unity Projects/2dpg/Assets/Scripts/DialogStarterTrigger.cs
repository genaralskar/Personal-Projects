using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(DialogStarter))]
public class DialogStarterTrigger : MonoBehaviour
{
    public bool oneShot = true;
    private bool shoted = false;

    private DialogStarter start;

    private void Awake()
    {
        start = GetComponent<DialogStarter>();
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (oneShot && shoted) return;
        start.StartDialog();
        shoted = true;
    }
}
