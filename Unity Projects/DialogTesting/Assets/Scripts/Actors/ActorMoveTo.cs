using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Actor))]
[RequireComponent(typeof(ActorMove))]
public class ActorMoveTo : MonoBehaviour
{
    private Actor actor;
    private ActorMove actorMove;
    private bool isPlayer = false;

    private void Awake()
    {
        actor = GetComponent<Actor>();
        actorMove = GetComponent<ActorMove>();
        actor.MoveEvent += MoveActorHandler;
    }

    private void MoveActorHandler(Vector2 location)
    {
        StopAllCoroutines();
        isPlayer = actor.playerControlling;
        actor.playerControlling = false;
        StartCoroutine(MoveTo(location));
    }

    private IEnumerator MoveTo(Vector2 location)
    {
        WaitForEndOfFrame wait = new WaitForEndOfFrame();
        while (Vector2.Distance(actor.transform.position, location) > .01f)
        {
            //get direction
            Vector2 direction = location - (Vector2)actor.transform.position;
            actorMove.SetMoveDirection(direction);
            yield return wait;
        }
        actor.transform.position = location;

        actor.MoveFinishEvent();
        actorMove.SetMoveDirection(Vector2.zero);
        if(isPlayer)
            actor.playerControlling = true;
    }
}
