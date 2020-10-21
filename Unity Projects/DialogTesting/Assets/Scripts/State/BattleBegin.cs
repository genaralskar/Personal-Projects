using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BattleBegin : BattleState
{
    public BattleBegin(BattleController battleController) : base(battleController) {    }

    public override IEnumerator OnStateEnter()
    {
        Debug.Log("The Start!");
        yield return null;
        battleController.SetState(new BattlePlayerTurn(battleController));
    }
}
