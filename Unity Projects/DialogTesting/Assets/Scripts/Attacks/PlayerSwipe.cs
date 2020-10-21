using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[CreateAssetMenu(menuName = "Attack/Player/Swipe")]
public class PlayerSwipe : AttackBase
{
    private bool nextPhase = false;
    private System.Action onComplete;

    public override void StartAttack(BattleController bc, UnityAction onComplete)
    {
        this.bc = bc;
        bc.StartCoroutine(Attack());
    }

    private IEnumerator Attack()
    {
        WaitForEndOfFrame wait = new WaitForEndOfFrame();

        // walk to position
        bc.ActiveActor.MoveActorBlocking(bc.actorAttackPositions[bc.enemySelectionNumber].position, onComplete);
        while(!nextPhase)
        {
            yield return wait;
        }
        nextPhase = false;

        // play slash animation
        bc.ActiveActor.SetAnimatorBool?.Invoke("slash", true);
        yield return new WaitForSeconds(.1f);
        bc.ActiveActor.SetAnimatorBool?.Invoke("slash", false);
        yield return new WaitForSeconds(.4f);

        // damage enemy
        bc.actors[bc.enemySelectionNumber].DamageActor(4);

        // walk back to home
        bc.ActiveActor.MoveActorBlocking(bc.ActiveActor.StartPos, onComplete);
        while (!nextPhase)
        {
            yield return wait;
        }
        nextPhase = false;

        // end turn
        yield break;
    }

    private void OnCompleteHandler()
    {
        nextPhase = true;
    }
}
