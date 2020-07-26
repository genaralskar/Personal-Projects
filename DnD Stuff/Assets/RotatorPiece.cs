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
    }
}
