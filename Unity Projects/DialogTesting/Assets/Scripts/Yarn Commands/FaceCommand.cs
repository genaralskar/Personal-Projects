using UnityEngine;
using Yarn.Unity;

public class FaceCommand : MonoBehaviour
{
    public DialogueRunner dialogueRunner;
    [SerializeField]

    private void Awake()
    {
        if (dialogueRunner == null)
            dialogueRunner = FindObjectOfType<DialogueRunner>();
        dialogueRunner.AddCommandHandler("face", Face);

    }

    private void Face(string[] parameters)
    {
        Debug.Log("facing" + parameters[0]);
        if (parameters == null) return;

        int actorNameIndex = 1;

        Vector2 faceDirection = Vector2.zero;
        if(parameters[0] == "up")
        {
            faceDirection = Vector2.up;
            Debug.Log("facing up");
        }
        else if (parameters[0] == "left")
        {
            faceDirection = Vector2.left;
            Debug.Log("facing left");
        }
        else if (parameters[0] == "down")
        {
            faceDirection = Vector2.down;
            Debug.Log("facing down");
        }
        else if (parameters[0] == "right")
        {
            faceDirection = Vector2.right;
            Debug.Log("facing right");
        }
        else
        {
            Debug.Log("movment facing");
            actorNameIndex = 0;
        }
        Debug.Log("setting facing to " + faceDirection);
        Actor a = SceneObjects.GetActor(parameters[actorNameIndex]);
        if(a != null)
            a.SetFacingEvent?.Invoke(faceDirection);
    }
}
