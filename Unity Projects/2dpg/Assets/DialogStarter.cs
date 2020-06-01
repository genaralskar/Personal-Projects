using System.Collections.Generic;
using UnityEditor.Animations;
using UnityEngine;

public class DialogStarter : MonoBehaviour
{
    public AnimatorController dialog;
    public List<Transform> dialogPos;
    
    public void StartDialog()
    {
        DialogManager.NewDialog(dialog, dialogPos);
    }
}
