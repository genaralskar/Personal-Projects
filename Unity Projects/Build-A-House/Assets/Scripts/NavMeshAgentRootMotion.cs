using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class NavMeshAgentRootMotion : MonoBehaviour
{
    public NavMeshAgent agent;
    public Animator anims;

    private void OnAnimatorMove()
    {
        agent.velocity = anims.deltaPosition / Time.deltaTime;
    }
}
