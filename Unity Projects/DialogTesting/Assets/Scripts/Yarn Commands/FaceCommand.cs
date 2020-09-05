using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Yarn.Unity;

public class FaceCommand : NonBlockingCommand
{
    [SerializeField]
    private string commandName2 = "faceLeft";

    protected override void Awake()
    {
        base.Awake();
        dialogueRunner.AddCommandHandler(commandName2, Command2);

    }

    protected override void Command(string[] parameters)
    {
        SceneObjects.GetActor(parameters[0]).SetFacingEvent?.Invoke(false);
    }

    private void Command2(string[] parameters)
    {
        SceneObjects.GetActor(parameters[0]).SetFacingEvent?.Invoke(true);
    }
}
