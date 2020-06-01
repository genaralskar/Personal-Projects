using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StateOptionsDialog : StateMachineBehaviour
{
    [Range(2, 5)]
    public int numOptions = 4;

    public string option0 = "Option 0";
    public string option1 = "Option 1";
    public string option2 = "Option 2";
    public string option3 = "Option 3";
    public string option4 = "Option 4";
    
    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        DialogManager.SendDialog?.Invoke(new DialogInfo(null, "", 0, true, numOptions, option0, option1, option2, option3, option4));   
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
