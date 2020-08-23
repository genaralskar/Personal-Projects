using System.Collections;
using System.Collections.Generic;
using UnityEditor.Animations;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;

public class DialogManager : MonoBehaviour
{
    public static UnityAction<DialogInfo> SendDialog;
    public static UnityAction<DialogStartInfo> NewDialog;
    public static UnityAction<int> DialogOptionInput;
    public static UnityAction<int, float> DialogEvent;
    public static UnityAction EndDialog;
    

    public DialogBox dialogBox;
    public DialogOptionBox optionsBox;
    public Animator currentDialog;

    [Header("Box Movement Stuff")]
    public RectTransform dialogBoxTransform;
    public Transform playerPos;
    public List<Transform> otherPos;
    public List<UnityEvent> otherEvents;
    public float moveTime = .5f;
    public AnimationCurve moveCurve = AnimationCurve.EaseInOut(0, 0, 1, 1);
    public float normalizedYOffset = .1f;
    private Vector2 desiredPos;
    private Coroutine mover;

    public static bool DialogActive;
    
    private void Awake()
    {
        SendDialog += SendDialogHandler;
        NewDialog += NewDialogHandler;
        DialogOptionInput += DialogOptionInputHandler;
        DialogEvent += DialogEventHandler;
        EndDialog += EndDialogHandler;
    }

    public void DialogOptionInputHandler(int value)
    {
        string op = $"Option{value}";
        currentDialog.SetTrigger(op);
    }
    
    public void NewDialogHandler(DialogStartInfo info)
    {
        currentDialog.runtimeAnimatorController = info.dialog;
        otherPos = info.dialogPos;
        otherEvents = info.dialogEvents;
        DialogActive = true;
    }
    
    private void SendDialogHandler(DialogInfo info)
    {
        optionsBox.gameObject.SetActive(info.options);
        dialogBox.gameObject.SetActive(!info.options);
        
        if (info.options)
        {
            optionsBox.UpdateOptions(info);
        }
        else
        {
            dialogBox.UpdateBox(info);
        }

        if (info.options || info.character.isPlayer)
        {
            SetDesiredDialogPos(playerPos.position);
        }
        else
        {
            SetDesiredDialogPos(otherPos[info.positionIndex].position);
        }
        
        if(mover != null)
            StopCoroutine(mover);
        mover = StartCoroutine(MoveDialogBox());
    }

    private void SetDesiredDialogPos(Vector2 pos)
    {
        //move desiredPos.y up by normalized offset
        Vector2 off = Camera.main.ViewportToScreenPoint(new Vector3(0, normalizedYOffset));
        //Debug.Log("Off = " + off);
        desiredPos = (Vector2)Camera.main.WorldToScreenPoint(pos) + off;
    }

    private void DialogEventHandler(int eventIndex, float delay = 0f)
    {
        if (eventIndex <= -1) return;

        if(eventIndex > otherEvents.Count - 1)
        {
            Debug.LogError("Dialog Event Index out of range!" + otherEvents.Count);
        }
        else
        {
            otherEvents[eventIndex].Invoke();
        }
        StartCoroutine(EventDelay(delay));
    }

    private IEnumerator EventDelay(float delay)
    {
        if (delay <= 0)
            delay = 0;
        yield return new WaitForSeconds(delay);
        currentDialog.SetTrigger("EventOption");
    }

    private void EndDialogHandler()
    {
        currentDialog.runtimeAnimatorController = null;
        dialogBox.gameObject.SetActive(false);
        dialogBox.gameObject.SetActive(false);
        DialogActive = false;
    }

    private IEnumerator MoveDialogBox()
    {
        float timer = 0;
        Vector2 startPos = dialogBoxTransform.position;
        WaitForEndOfFrame wait = new WaitForEndOfFrame();
        while (timer < moveTime)
        {
            //lerp box
            Vector2 newPos = Vector2.LerpUnclamped(startPos, desiredPos, moveCurve.Evaluate(timer/moveTime));
            //Debug.Log($"Eval= {moveCurve.Evaluate(timer / moveTime)}, newPos: {newPos}");
            //Debug.Log($"newpos {newPos}");
            newPos.x = Mathf.Clamp(newPos.x, (0 + dialogBoxTransform.offsetMax.x * .5f), Camera.main.pixelWidth - (dialogBoxTransform.offsetMax.x * .5f));
            newPos.y = Mathf.Clamp(newPos.y, (0 + dialogBoxTransform.offsetMax.y * .5f), Camera.main.pixelHeight - (dialogBoxTransform.offsetMax.y * .5f));
            
            dialogBoxTransform.position = newPos;
            timer += Time.deltaTime;
            yield return wait;
        }
    }


}
