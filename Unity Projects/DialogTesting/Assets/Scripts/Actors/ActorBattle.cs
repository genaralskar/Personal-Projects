using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[RequireComponent(typeof(Actor))]
public class ActorBattle : MonoBehaviour
{
    private Actor actor;

    public List<AttackBase> attacks;

    private void Awake()
    {
        actor = GetComponent<Actor>();
        actor.ActorAttack += OnAttack;
    }

    private void OnAttack(BattleController bc, int attackNum, UnityAction onComplete)
    {
        attacks[attackNum].StartAttack(bc, onComplete);
    }

}
