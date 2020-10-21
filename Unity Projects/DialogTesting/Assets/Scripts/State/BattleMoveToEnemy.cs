using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// move an actor to a desired location based on their attack and enemy
/// </summary>
public class BattleMoveToLocation : IState
{
    private readonly BattleController battleController;
    private Action onComplete;
    private bool atLocation;
    private Vector2 location;

    public BattleMoveToLocation(BattleController battleController)
    {
        this.battleController = battleController;
        onComplete = OnCompleteHandler;
    }

    public void OnEnter()
    {
        // get location
        if (battleController.GoingHome)
        {
            location = battleController.ActiveActor.StartPos;
        }
        else
        {
            location = battleController.actorAttackPositions[battleController.enemySelectionNumber].position;
        }

        // disable selection ui
        // walk towards location
        battleController.ActiveActor.MoveActorBlocking(location, onComplete);
    }

    public void OnExit() { }

    public void Tick()
    {
        // when actor has reached target
    }

    private void OnCompleteHandler()
    {
        atLocation = true;
        if(battleController.GoingHome)
        {
            battleController.ActorHome();
        }
    }
}
