using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AggroTrigger : MonoBehaviour
{
    public Enemy enemy;
    
    private void OnTriggerEnter2D(Collider2D other)
    {
        enemy.TriggerAggro(other.transform);
    }
}
