using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BattleController : BattleStateMachine
{
    StateMachine stateMachine;

    // where 0 = the player, and 1+ = an enemy
    public int activeActorNumber = 0;
    public int enemySelectionNumber = 0;
    public List<Transform> actorAttackPositions;

    public List<Actor> actors;
    public Actor ActiveActor => actors[activeActorNumber];

    public int attackNumber = 0;

    private bool atEnemy => Vector2.Distance(ActiveActor.transform.position, actorAttackPositions[enemySelectionNumber].position) < .01f;
    private bool atHome => Vector2.Distance(ActiveActor.transform.position, ActiveActor.StartPos) < .01f;
    private bool activeaAtorIsPlayer => ActiveActor == actors[0];

    private bool actorSelected = false;
    private bool attackSelected = false;
    private bool activeAttack = false;
    private bool goingHome = false;
    public bool GoingHome => GoingHome;

    public GameObject playerAttackButtons;


    private void Awake()
    {
        stateMachine = new StateMachine();
        SetState(new BattleBegin(this));

        // ==== States ==== \\
        // remove these scripts \\
        var playerSelect = new BattlePlayerSelect(this);
        var enemySelect = new BattleEnemySelect(this);
        var playerAttack = new BattlePlayerSwipe(this);
        var moveToHome = new BattleMoveToLocation(this);
        var moveToEnemy = new BattleMoveToLocation(this);
        // remove these scripts \\


        var setActiveActor = new BattleSetActiveActor(this);
        var selectAttack = new BattleSelectAttack(this);
        var executeAttack = new BattleExecuteAttack(this);
        

        // == Transitions == \\
        At(setActiveActor, selectAttack, ActorSelected());
        At(selectAttack, moveToEnemy, AttackSelected());
        At(moveToEnemy, executeAttack, AtEnemy());
        At(executeAttack, moveToHome, AttackEnd());
        At(moveToHome, setActiveActor, AtHome());

        // == Conditions == \\
        void At(IState from, IState to, Func<bool> condition) => stateMachine.AddTransition(from, to, condition);
        Func<bool> AtEnemy() => () => atEnemy;
        Func<bool> AtHome() => () => atHome;
        Func<bool> AttackEnd() => () => activeAttack == false;
        Func<bool> AttackSelected() => () => attackSelected == true;
        Func<bool> ActorSelected() => () => actorSelected == true;

    }

    public void StartAttack()
    {
        activeAttack = true;
    }

    public void FinishAttack()
    {
        activeAttack = false;
        goingHome = true;
    }

    public void ActorHome()
    {
        goingHome = false;
    }

    public void MoveComplete()
    {

    }

    public void SelectActor(int number)
    {
        activeActorNumber = number;
        actorSelected = true;
    }

    public void SelectAttack(int attack)
    {
        actorSelected = false;
        attackNumber = attack;
    }

    public void SelectEnemy(int enemy)
    {
        enemySelectionNumber = enemy;
        attackSelected = true;
    }

    
    public void OnBattleStart()
    {
        // decide who goes first based on speed(?)
        // player always goes first for now
        // setup ui
    }

    public void OnPlayerTurn()
    {
        // control ui, choose attack from ui
    }

    public void OnPlayerAttack(int attack, int enemy)
    {
        attackNumber = attack;
        enemySelectionNumber = enemy;
        // actor walks up to enemy

        // hit a button at right time to do more damage
        // player attacks the enemy
        // actor walks back to start
    }

    public void OnEnemyTurn()
    {
        // chooses which attack to use
    }

    public void OnEnemyAttack()
    {
        // enemy walks up to the player
        // player can push buttons are right time to avoid damage
        // enemy attacks the player
    }

}

public struct BattleInformation
{
    // background image

    // list of enemies for encounter
    // their outfits
    // their attacks
    // their stats
    public BattleStats enemy1;
    public BattleStats enemy2;
    public BattleStats enemy3;
    public BattleStats enemy4;
}

public struct BattleStats
{
    // outfit
    public OutfitSO outfit;

    // attacks

    // stats
    public int health;
    public int attack;
    public int defense;
}
