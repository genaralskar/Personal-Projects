using System.Collections;
using System.Collections.Generic;
using System.Timers;
using UnityEditor.ShaderGraph;
using UnityEngine;
using UnityEngine.AI;

public class CharController : MonoBehaviour
{

	public Controller controller;
	public Transform eyes;
	public Transform AITransform;
	public Transform wanderDestination;

	public Transform gun;
	public Weapon weapon;

	public LayerMask characterLayer;
	
	private NavMeshAgent agent;

	public Health health;

	public Controller wander;
	public Controller trackAndShoot;
	public Controller moveToLastPos;
	public Controller scan;
	public Controller runAway;

	private void Start()
	{
		health.HealthDamage += HealthHitHandler;
		
		agent = GetComponent<NavMeshAgent>();
		
		wander = InstanceBehaviors(wander);
		trackAndShoot = InstanceBehaviors(trackAndShoot);
		moveToLastPos = InstanceBehaviors(moveToLastPos);
		scan = InstanceBehaviors(scan);
		runAway = InstanceBehaviors(runAway);
		
		if (eyes == null)
		{
			eyes = transform;
		}

		if (controller == null)
		{
			controller = wander;
		}

		print(wander.GetInstanceID());
	}

	private Controller InstanceBehaviors(Controller cont)
	{		
		Controller newCont = ScriptableObject.Instantiate(cont);
		print(newCont);
		return newCont;
	}
	
	private void Update()
	{
		controller.ExecuteBehavior(agent, this);
	}

	
	
	private Transform trackedEnemy;
	public Vector3 lastEnemyPosition;
	
	public void StartVisionCheck(Transform objectTransform)
	{
		if (controller.lineOfSightTracking)
		{
			controller = trackAndShoot;
			AITransform = objectTransform;
			trackedEnemy = objectTransform;
		//	StartCoroutine(LineOfSightCheck());
		}
	}

	private void HealthHitHandler()
	{
		if (controller == wander || controller == moveToLastPos || controller == scan)
		{
			controller = runAway;
		}
	}
	
//	private IEnumerator LineOfSightCheck()
//	{
//		//set behavior to track and shoot
//		Vector3 direction = trackedEnemy.position - eyes.transform.position;
//		RaycastHit hit;
//		while (Physics.Raycast(eyes.position, direction, out hit, Mathf.Infinity, characterLayer))
//		{
//			lastEnemyPosition = hit.point;
//			//execute tracking behavior
//			yield return new WaitForEndOfFrame();
//		}
//		
//		//break line of sight
//		//walk towards last know destination
//		agent.destination = lastEnemyPosition;
//
//
//		//return to wander
//	}
//
//	private void ResetLOSCheck()
//	{
//		StopAllCoroutines();
//		StartCoroutine(LineOfSightCheck());
//	}
}
