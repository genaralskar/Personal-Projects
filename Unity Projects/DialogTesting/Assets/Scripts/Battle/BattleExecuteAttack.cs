using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

/// <summary>
/// 
/// </summary>
internal class BattleExecuteAttack : IState
{
    private BattleController battleController;

    private UnityAction AttackComplete;

    public BattleExecuteAttack(BattleController battleController)
    {
        this.battleController = battleController;
    }

    public void OnEnter()
    {
        AttackComplete = AttackCompleteHandler;
        //set true if its the player, set false if its not
        battleController.playerAttackButtons.SetActive(false);
        // run attack
        battleController.ActiveActor.ActorAttack?.Invoke(battleController, battleController.attackNumber, AttackComplete);
    }

    public void OnExit()
    {
 
    }

    public void Tick()
    {

    }

    private void AttackCompleteHandler()
    {
        battleController.FinishAttack();
    }
}