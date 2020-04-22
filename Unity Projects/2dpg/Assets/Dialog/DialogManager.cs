using UnityEditor.Animations;
using UnityEngine;
using UnityEngine.Events;

public class DialogManager : MonoBehaviour
{
    public static UnityAction<DialogInfo> SendDialog;
    public static UnityAction<AnimatorController> NewDialog;
    public static UnityAction<int> DialogOptionInput;
    public static UnityAction EndDialog;

    public DialogBox dialogBox;
    public DialogOptionBox optionsBox;
    public Animator currentDialog;

    public static bool DialogActive;
    
    private void Awake()
    {
        SendDialog += SendDialogHandler;
        NewDialog += NewDialogHandler;
        DialogOptionInput += DialogOptionInputHandler;
        EndDialog += EndDialogHandler;
    }

    public void DialogOptionInputHandler(int value)
    {
        string op = $"Option{value}";
        currentDialog.SetTrigger(op);
    }
    
    public void NewDialogHandler(AnimatorController newDialog)
    {
        currentDialog.runtimeAnimatorController = newDialog;
        DialogActive = true;
        Player.canMove = false;
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
    }

    private void EndDialogHandler()
    {
        currentDialog.runtimeAnimatorController = null;
        dialogBox.gameObject.SetActive(false);
        dialogBox.gameObject.SetActive(false);
        DialogActive = false;
        Player.canMove = true;
    }
}
