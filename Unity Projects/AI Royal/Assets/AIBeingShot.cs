using System.Collections;
using System.Collections.Generic;
using System.Xml.Schema;
using UnityEditor.Experimental.Rendering;
using UnityEngine;
using UnityEngine.AI;

[CreateAssetMenu(menuName = "Controllers/AI Being Shot")]
public class AIBeingShot : Controller
{
    public float runRange = 10;

    public LayerMask rayHidingCheck;

    private bool running = false;
    private bool foundHiding = false;
    
    public override void ExecuteBehavior(NavMeshAgent agent, CharController charController)
    {
        if (foundHiding)
        {
            charController.controller = charController.trackAndShoot;
            return;
        }
        
        //find spot out of view of the enemy shooting
        //if no spot, turn around and change to track and shoot
        if (!running)
        {
            FindHidingSpot(agent, charController.AITransform);
        }
    }

    private void FindHidingSpot(NavMeshAgent agent, Transform target)
    {
        for (int i = 0; i < 20; i++)
        {
            Vector3 temp = FindValidHidingSpot(agent.transform, target);
            if (temp != Vector3.one * 100)
            {
                //if spot is found
                agent.destination = temp;
                running = true;
                break;
            }
        }

        if (!running)
        {
            foundHiding = true;
        }
    }

    private Vector3 FindValidHidingSpot(Transform character, Transform target)
    {
        Vector3 runAwayVector = new Vector3(Random.Range(0, runRange), 0, Random.Range(0, runRange));

        Vector3 newPos = character.position + runAwayVector;
        NavMeshHit hit;
        if (NavMesh.SamplePosition(newPos, out hit, 1, NavMesh.AllAreas))
        {
            RaycastHit rayHit;
            Vector3 rayDirection = target.position - character.position;
            if (!Physics.Raycast(newPos + Vector3.up, rayDirection, out rayHit, Mathf.Infinity, rayHidingCheck)) //if doesnt hit another player
            {
                return newPos;
            }
        }
        return Vector3.one * 100;
    }
    
    private void FaceTarget(Transform target, NavMeshAgent agent)
    {
        Vector3 direction = (target.position - agent.transform.position).normalized;
        Quaternion lookRotation = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z));
        agent.transform.rotation = Quaternion.Slerp(agent.transform.rotation, lookRotation, Time.deltaTime * 5f);
        
        
        
    }

    private void DestinationCheck(NavMeshAgent agent)
    {
        if (Vector3.Distance(agent.transform.position, agent.destination) < 1)
        {
            running = false;
        }
    }
    
}
