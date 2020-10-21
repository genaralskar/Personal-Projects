using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Actor : MonoBehaviour
{
    public UnityAction<Vector2> MoveEvent;
    public UnityAction<Vector2> SetPositionEvent;
    public UnityAction MoveFinishEvent;
    public UnityAction<Vector2> SetFacingEvent;
    public UnityAction<float> SetMoveSpeedEvent;
    public UnityAction<BattleController, int, UnityAction> ActorAttack;
    public UnityAction<string, bool> SetAnimatorBool;
    public UnityAction<string, float> SetAnimatorFloat;
    public UnityAction<string> SetAnimatorTrigger;
    public UnityAction<int> DamageActor;

    private System.Action blockingHolder;

    [Tooltip("This is the name that is used to match the actor to dialog." +
        "This should be the same as how the name appears in a dialogue")]
    public string actorName;
    public bool playerControlling = false;

    private Vector2 startPos;
    public Vector2 StartPos => startPos;

    private void Awake()
    {
        startPos = transform.position;
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
