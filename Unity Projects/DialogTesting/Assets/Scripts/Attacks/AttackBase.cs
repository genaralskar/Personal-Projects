using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public abstract class AttackBase : ScriptableObject
{
    protected BattleController bc;
    public abstract void StartAttack(BattleController bc, UnityAction onComplete);
}
