using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

[CreateAssetMenu(menuName = "Controllers/Move To Last Known Enemy Position")]
public class AIWalkToLastEnemyPosition : Controller {
	
	public override void ExecuteBehavior(NavMeshAgent agent, CharController charController)
	{
		if (agent.destination != charController.lastEnemyPosition)
		{
			agent.destination = charController.lastEnemyPosition;
		}

		if (Vector3.Distance(agent.transform.position, agent.destination) < .5)
		{
			Debug.Log("setting to agent look");
			charController.lookController = charController.agentLook;
			charController.controller = charController.scan;
		}
	}
}
