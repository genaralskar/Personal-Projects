using UnityEngine;
using UnityEngine.Events;

[RequireComponent(typeof(Actor))]
public class ActorFacing : MonoBehaviour
{
    public UnityAction<Vector2> FaceDirectionUpdated;

    private Actor actor;
    public bool FaceMove { get; private set; } = true;
    public Vector2 FaceDirection { get; private set; } = Vector2.zero;

    private void Awake()
    {
        actor = GetComponent<Actor>();
        actor.SetFacingEvent += ActorFacingHandler;
    }

    private void ActorFacingHandler(Vector2 value)
    {
        FaceDirection = value;
        if(value == Vector2.zero)
        {
            FaceMove = true;
        }
        else
        {
            FaceMove = false;
        }
        Debug.Log("faceDirection " + FaceDirection);
        FaceDirectionUpdated?.Invoke(FaceDirection);
    }
}
