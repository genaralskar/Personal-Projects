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
        //find spot out of view of the enemy shooting
        //if no spot, turn around and change to track and shoot
        if (!running)
        {
            FindHidingSpot(agent, charController);
        }
        else
        {
            DestinationCheck(agent, charController);
        }
        
        
    }

    private void FindHidingSpot(NavMeshAgent agent, CharController charController)
    {
        for (int i = 0; i < 20; i++)
        {
            Vector3 temp = FindValidHidingSpot(agent.transform, charController.AITransform);
            if (temp != Vector3.one * 100)
            {
                //if spot is found
                agent.destination = temp;
                running = true;
                break;
            }
            else //if no valid destination found
            {
                charController.controller = charController.trackAndShoot;
                charController.lookController = charController.lookAtTarget;
                return;
            }
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
    


    private void DestinationCheck(NavMeshAgent agent, CharController charController)
    {
        if (Vector3.Distance(agent.transform.position, agent.destination) < 1)
        {
            running = false;
            charController.controller = charController.scan;
//            Debug.Log("setting to agent look ai being shot");
//            charController.lookAtTarget = charController.agentLook;
        }
    }
    
}
