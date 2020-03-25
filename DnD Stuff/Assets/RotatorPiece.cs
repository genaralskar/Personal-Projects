using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotatorPiece : MonoBehaviour
{
    public Rotator rotator;
    public int piece;
    
    private void OnMouseDown()
    {
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        if (Physics.Raycast(ray, out var hit))
        {
            float clickDif = hit.point.x - transform.position.x;
            Debug.Log(clickDif);
            
            //if the click is near the middle of the part
            if (Mathf.Abs(clickDif) < .05f) return;

            int dir = clickDif > 0 ? 1 : 0;
            
            rotator.RotatePart(transform, dir, piece);
        }
    }
}
