﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StateDialogNoChar : StateMachineBehaviour
{
    private DialogCharacter character;
    public string displayName;
    public Sprite image;
    public int positionIndex = 0;
    public int eventIndex = -1;
    public bool isPlayer = false;
    [TextArea(3, 5)]
    public string dialog;
    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        character = new DialogCharacter();
        character.displayName = displayName;
        character.displayImage = image;
        character.isPlayer = isPlayer;
        DialogManager.SendDialog?.Invoke(new DialogInfo(character, dialog, positionIndex, eventIndex));
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    //override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    //{
    //    
    //}

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    //override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    //{
    //    
    //}

    // OnStateMove is called right after Animator.OnAnimatorMove()
    //override public void OnStateMove(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    //{
    //    // Implement code that processes and affects root motion
    //}

    // OnStateIK is called right after Animator.OnAnimatorIK()
    //override public void OnStateIK(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    //{
    //    // Implement code that sets up animation IK (inverse kinematics)
    //}
}
