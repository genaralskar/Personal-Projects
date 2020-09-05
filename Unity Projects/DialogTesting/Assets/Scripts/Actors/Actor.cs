using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Actor : MonoBehaviour
{
    public UnityAction<Vector2> MoveEvent;
    public UnityAction<Vector2> SetPositionEvent;
    public UnityAction MoveFinishEvent;
    public UnityAction<bool> SetFacingEvent;
    private System.Action blockingHolder;

    [Tooltip("This is the name that is used to match the actor to dialog." +
        "This should be the same as how the name appears in a dialogue")]
    public string actorName;

    private void Awake()
    {
        MoveFinishEvent += ActorFinishMoveHandler;
    }

    public void MoveActor(Vector2 location)
    {
        MoveEvent?.Invoke(location);
    }

    public void MoveActorBlocking(Vector2 location, System.Action onComplete)
    {
        blockingHolder = onComplete;
        MoveActor(location);
    }

    public void SetActorPosition(Vector2 location)
    {
        SetPositionEvent?.Invoke(location);
    }

    private void ActorFinishMoveHandler()
    {
        blockingHolder?.Invoke();
        blockingHolder = null;
    }
}
