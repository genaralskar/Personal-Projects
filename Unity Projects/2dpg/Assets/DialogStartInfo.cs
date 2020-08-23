using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEditor.Animations;

public class DialogStartInfo
{
    public AnimatorController dialog;
    public List<Transform> dialogPos;
    public List<UnityEvent> dialogEvents;

    public DialogStartInfo(AnimatorController dialog, List<Transform> dialogPos, List<UnityEvent> dialogEvents)
    {
        this.dialog = dialog;
        this.dialogPos = dialogPos;
        this.dialogEvents = dialogEvents;
    }
}
