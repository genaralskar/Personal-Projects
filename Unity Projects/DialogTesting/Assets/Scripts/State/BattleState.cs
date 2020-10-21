using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public abstract class BattleState
{
    protected BattleController battleController;

    public BattleState(BattleController battleController)
    {
        this.battleController = battleController;
    }

    public virtual IEnumerator OnStateEnter()
    {
        yield break;
    }

    public virtual IEnumerator OnStateStay()
    {
        yield break;
    }

    public virtual IEnumerator OnStateExit()
    {
        yield break;
    }
}
