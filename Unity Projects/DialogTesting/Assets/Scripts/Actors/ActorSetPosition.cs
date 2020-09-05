using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Actor))]
public class ActorSetPosition : MonoBehaviour
{
    private Actor actor;

    private void Awake()
    {
        actor = GetComponent<Actor>();
        actor.SetPositionEvent += SetPositionHandler;
    }

    private void SetPositionHandler(Vector2 location)
    {
        actor.transform.position = location;
    }
}
