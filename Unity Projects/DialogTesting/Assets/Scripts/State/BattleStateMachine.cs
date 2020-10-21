using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BattleStateMachine : MonoBehaviour
{
    public BattleState State;

    public void SetState(BattleState newState)
    {
        State = newState;
    }
}
