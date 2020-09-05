using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Actor))]
public class ActorMove : MonoBehaviour
{
    private Actor actor;

    [SerializeField]
    private float moveSpeed = 5;

    private void Awake()
    {
        actor = GetComponent<Actor>();
        actor.MoveEvent += MoveActorHandler;
    }

    public void MoveActorHandler(Vector2 location)
    {
        StopAllCoroutines();
        StartCoroutine(Move(location));
    }

    private IEnumerator Move(Vector2 location)
    {
        WaitForEndOfFrame wait = new WaitForEndOfFrame();
        while (Vector2.Distance(transform.position, location) > .1f)
        {
            yield return wait;
            //get direction
            Vector2 direction = location - (Vector2)transform.position;

            transform.Translate(direction.normalized * moveSpeed * Time.deltaTime);
        }

        actor.MoveFinishEvent();
    }
}
