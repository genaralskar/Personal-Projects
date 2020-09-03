using System.Collections.Generic;
using UnityEditor.Animations;
using UnityEngine;
using UnityEngine.Events;

public class DialogStarter : MonoBehaviour
{
    public AnimatorController dialog;
    public List<Transform> dialogPos;
    public List<UnityEvent> events;
    
    public void StartDialog()
    {
        DialogStartInfo info = new DialogStartInfo(dialog, dialogPos, events);
        DialogManager.NewDialog?.Invoke(info);
    }
}
