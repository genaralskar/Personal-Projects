/// <summary>
/// Used to set the next active actor in a battle
/// Also checks if all enemies/players are dead
/// </summary>
internal class BattleSetActiveActor : IState
{
    private BattleController battleController;

    public BattleSetActiveActor(BattleController battleController)
    {
        this.battleController = battleController;
    }

    public void OnEnter()
    {
        Set();
    }

    public void OnExit()
    {

    }

    public void Tick()
    {

    }

    private void Set()
    {
        //check health of player

        //check health of all enemies

        //deactivate enemies if nessesary

        //set next actor number.
        int newActor = battleController.activeActorNumber + 1;
        if (newActor >= battleController.actors.Count)
            newActor = 0;

        battleController.SelectActor(newActor);
    }
}