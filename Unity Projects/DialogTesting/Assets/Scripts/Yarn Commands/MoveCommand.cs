﻿using System;
using UnityEngine;
using Yarn.Unity;

public class MoveCommand : MonoBehaviour
{
    private enum MoveType { move, wait, instant }

    public DialogueRunner dialogueRunner;

    private void Awake()
    {
        dialogueRunner.AddCommandHandler("moveWait", MoveWait);
        dialogueRunner.AddCommandHandler("move", Move);
        dialogueRunner.AddCommandHandler("moveInstant", MoveInstant);
    }

    private void Move(string[] parameters)
    {
        MoveSetupNonBlocking(parameters, MoveType.move);
    }

    private void MoveInstant(string[] parameters)
    {
        MoveSetupNonBlocking(parameters, MoveType.instant);
    }

    private void MoveWait(string[] parameters, System.Action onComplete)
    {
        MoveSetupBlocking(parameters, onComplete, MoveType.wait);
        return;
        //find actor in scene with name parameters[0]
        Actor actor = SceneObjects.GetActor(parameters[0]);

        //find location in scene with name parameters[1]
        Location location = SceneObjects.GetLocation(parameters[1]);

        if(actor == null)
        {
            Debug.LogWarning($"No actor with name {parameters[0]} found. Continuing dialogue");
            onComplete?.Invoke();
        }
        if(location == null)
        {
            Debug.LogWarning($"No location with name {parameters[1]} found. Continuing dialogue");
            onComplete?.Invoke();
        }

        //move actor to location
        actor.MoveActorBlocking(location.Position, onComplete);

        //after move is done, call onActionComplete
    }

    private void MoveSetupBlocking(string[] parm, System.Action onComplete, MoveType type)
    {
        //find actor in scene with name parameters[0]
        Actor actor = SceneObjects.GetActor(parm[0]);

        //find location in scene with name parameters[1]
        Location location = SceneObjects.GetLocation(parm[1]);

        if (actor == null)
        {
            Debug.LogWarning($"No actor with name {parm[0]} found. Continuing dialogue");
            onComplete?.Invoke();
            return;
        }
        if (location == null)
        {
            Debug.LogWarning($"No location with name {parm[1]} found. Continuing dialogue");
            onComplete?.Invoke();
            return;
        }

        if(type == MoveType.wait)
        {
            actor.MoveActorBlocking(location.Position, onComplete);
        }
    }

    private void MoveSetupNonBlocking(string[] parms, MoveType type)
    {
        //find actor in scene with name parameters[0]
        Actor actor = SceneObjects.GetActor(parms[0]);

        //find location in scene with name parameters[1]
        Location location = SceneObjects.GetLocation(parms[1]);

        if (actor == null)
        {
            Debug.LogWarning($"No actor with name {parms[0]} found. Continuing dialogue");
            return;
        }
        if (location == null)
        {
            Debug.LogWarning($"No location with name {parms[1]} found. Continuing dialogue");
            return;
        }
        
        if(type == MoveType.move)
        {
            actor.MoveActor(location.Position);
        }

        if(type == MoveType.instant)
        {
            actor.SetActorPosition(location.Position);
        }
    }
}