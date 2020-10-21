/// <summary>
/// A state that allows an actor select thier next attack and enemy
/// once an enemy is selected it moves onto the next state
/// </summary>
internal class BattleSelectAttack : IState
{
    private BattleController battleController;

    public BattleSelectAttack(BattleController battleController)
    {
        this.battleController = battleController;
    }

    public void OnEnter()
    {
        //if actor is an enemy
        if(battleController.ActiveActor != battleController.actors[0])
        {
            battleController.playerAttackButtons.SetActive(false);
            //randomly select between available attacks
            // always use first attack
            battleController.SelectAttack(0);
            battleController.SelectEnemy(0);
        }
        battleController.playerAttackButtons.SetActive(true);
    }

    public void OnExit()
    {

    }

    public void Tick()
    {

    }
}