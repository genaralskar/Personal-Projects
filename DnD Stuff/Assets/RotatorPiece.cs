using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotatorPiece : MonoBehaviour
{
    public Rotator rotator;
    [Tooltip("0 = top, 1 = middle")]
    public int piece;
    [Tooltip("0 = right, 1 = left")]
    public int rotDirection = 0;
    
    private void OnMouseDown()
    {
        rotator.RotatePart(transform, rotDirection, piece);
        return;

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
