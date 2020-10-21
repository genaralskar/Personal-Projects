using System.Collections;

internal class BattlePlayerTurn : BattleState
{
    public BattlePlayerTurn(BattleController battleController) : base(battleController) {    }

    public override IEnumerator OnStateEnter()
    {
        
        return base.OnStateEnter();
    }

    public override IEnumerator OnStateExit()
    {
        // move player
        // activate button presser
        return base.OnStateExit();
    }
}