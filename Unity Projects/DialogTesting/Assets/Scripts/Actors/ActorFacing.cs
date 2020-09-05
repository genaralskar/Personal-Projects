using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Actor))]
public class ActorFacing : MonoBehaviour
{
    private Actor actor;
    private SpriteRenderer spriteRend;

    private void Awake()
    {
        actor = GetComponent<Actor>();

        spriteRend = actor.GetComponentInChildren<SpriteRenderer>();
        actor.SetFacingEvent += ActorFacingHandler;
    }

    private void ActorFacingHandler(bool value)
    {
        spriteRend.flipX = value;
    }
}
