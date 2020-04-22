using UnityEditor.Animations;
using UnityEngine;

public class DialogStarter : MonoBehaviour
{
    public AnimatorController dialog;

    public void StartDialog()
    {
        DialogManager.NewDialog(dialog);
    }
}
