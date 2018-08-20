using System.Collections;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using UnityEngine;
using UnityEngine.AI;

[CreateAssetMenu(menuName = "Controller/AI Wander")]
public class AIWander : Controller
{

	public float wanderRadius = 5;
	public float waitTime = 2;
	private Vector3 newPos;
	private bool firstLoopDone = false;
	
	public override void ExecuteBehavior(NavMeshAgent agent, CharController charController)
	{
//		Debug.Log("wander radius = " + wanderRadius);
//		Debug.Log("started = " + firstLoopDone);
		if (!firstLoopDone)
		{
			newPos = NewWanderPos(agent.transform, charController.wanderDestination);
//			Debug.Log("setting started to true");
			this.firstLoopDone = true;
		}
		
		if (agent.destination != newPos)
		{
			agent.destination = newPos;
		}

		if (Vector3.Distance(agent.transform.position, newPos) < .5)
		{
			newPos = NewWanderPos(agent.transform, charController.wanderDestination);
//			Debug.Log("charController = " + charController.gameObject);
		}
	}

	private float timer = 0;
	
	private void WaitTimer()
	{
		timer += Time.deltaTime;
		{
			if (timer > waitTime)
			{
				//new pos
				timer = 0;

			}
		}
	}

	private Vector3 NewWanderPos(Transform startPoint, Transform location)
	{
		Vector3 direction = location.position - startPoint.position;
		float randX = Random.Range(-(wanderRadius / 3), wanderRadius);
		float randZ = Random.Range(-(wanderRadius / 3), wanderRadius);
		if (direction.x > 0)
		{
			randX *= -1;
		}

		if (direction.z > 0)
		{
			randZ *= -1;
		}
		
		Vector3 newDest = new Vector3(startPoint.transform.position.x - randX, startPoint.transform.position.y, startPoint.transform.position.z - randZ);
		//check if it's on the navmesh
//		Debug.Log(newDest);
		return newDest;
	}

	private void OnDisable()
	{
		firstLoopDone = false;
	}
}
