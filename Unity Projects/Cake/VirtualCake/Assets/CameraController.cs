using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraController : MonoBehaviour
{
    public Transform offset;
    public float moveSpeed = 1;

    private bool dragging = false;
    private Vector3 dragOrig;
    private Quaternion rotOrig;
    
    private void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            dragging = true;
            dragOrig = Input.mousePosition;
            rotOrig = transform.rotation;
        }

        if (Input.GetMouseButtonUp(0))
        {
            dragging = false;
        }
        
        Move();
    }

    private void Move()
    {
        if (Blow.blowing) return;
        
        if (!dragging) return;
        
        Vector3 pos = Camera.main.ScreenToViewportPoint(Input.mousePosition - dragOrig);
        
        
        Vector3 rot = rotOrig.eulerAngles;
        rot += new Vector3(-pos.y, pos.x) * moveSpeed;
        
        //smoothing/velocity
        
        rot.x = Mathf.Clamp(rot.x, 10, 80);

        Quaternion newRot = Quaternion.Euler(rot);
        transform.rotation = newRot;
    }
}
