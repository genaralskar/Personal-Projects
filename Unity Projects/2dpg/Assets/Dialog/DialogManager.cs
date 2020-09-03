using System.Collections;
using System.Collections.Generic;
using UnityEditor.Animations;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;

public class DialogManager : MonoBehaviour
{
    public static bool DialogActive;

    public static UnityAction<DialogInfo> SendDialog;
    public static UnityAction<DialogStartInfo> NewDialog;
    public static UnityAction<int> DialogOptionInput;
    public static UnityAction<int, float> DialogEvent;
    public static UnityAction EndDialog;
    

    public DialogBox dialogBox;
    [SerializeField]
    private float dBoxPaddingY = 30f;
    [SerializeField]
    private float dBoxPaddingX = 30f;
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

    private Vector2 dBoxPos;
    private Vector2 desiredPos;
    private Coroutine mover;

    
    
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
            dBoxPos = playerPos.position;
        }
        else
        {
            SetDesiredDialogPos(otherPos[info.positionIndex].position);
            dBoxPos = otherPos[info.positionIndex].position;
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

        while (DialogActive)
        {
            SetDesiredDialogPos(dBoxPos);

            //fit desired position within bounds of the screen
            Vector2 dPos = desiredPos;
            dPos.x = Mathf.Clamp(dPos.x, (dialogBoxTransform.rect.width * .5f) + dBoxPaddingX, Camera.main.pixelWidth - (dialogBoxTransform.rect.width * .5f) - dBoxPaddingX);
            dPos.y = Mathf.Clamp(dPos.y, (dialogBoxTransform.rect.height * .5f) + dBoxPaddingY, Camera.main.pixelHeight - (dialogBoxTransform.rect.height * .5f) - dBoxPaddingY);
            //Debug.Log($"minY: {dialogBoxTransform.rect.height * .5f}");

            //lerp box
            Vector2 newPos = Vector2.Lerp(dialogBoxTransform.position, dPos, .5f);
            
            dialogBoxTransform.position = newPos;
            timer += Time.deltaTime;
            yield return wait;
        }
    }


}
