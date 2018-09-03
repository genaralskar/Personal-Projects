using System.Collections;
using System.Collections.Generic;
using System.Timers;
using UnityEditor.Experimental.Rendering;
using UnityEditor.ShaderGraph;
using UnityEngine;
using UnityEngine.AI;

public class CharController : MonoBehaviour
{

	public Controller controller;
	public Controller lookController;
	public Transform eyes;
	public Transform AITransform;
	public Transform wanderDestination;

	public Transform gun;
	public Weapon weapon;

	[Tooltip("Everything except the player selected")]
	public LayerMask characterLayer;
	
	private NavMeshAgent agent;

	public Health health;

	public Controller wander;
	public Controller trackAndShoot;
	public Controller moveToLastPos;
	public Controller scan;
	public Controller runAway;


	public Controller lookAtTarget;
	public Controller agentLook;

	[HideInInspector]
	public PlayerSpawner spawner;

	private void Start()
	{
		health.HealthDamage += HealthHitHandler;
		
		agent = GetComponent<NavMeshAgent>();
		
		wander = InstanceBehaviors(wander);
		trackAndShoot = InstanceBehaviors(trackAndShoot);
		moveToLastPos = InstanceBehaviors(moveToLastPos);
		scan = InstanceBehaviors(scan);
		runAway = InstanceBehaviors(runAway);
		
		lookAtTarget = InstanceBehaviors(lookAtTarget);
		agentLook = InstanceBehaviors(agentLook);
		
		
		if (eyes == null)
		{
			eyes = transform;
		}

		if (controller == null)
		{
			controller = wander;
		}

//		print(wander.GetInstanceID());
	}

	private Controller InstanceBehaviors(Controller cont)
	{		
		Controller newCont = ScriptableObject.Instantiate(cont);
//		print(newCont);
		return newCont;
	}
	
	private void Update()
	{
		if (agent.enabled)
		{
			controller.ExecuteBehavior(agent, this);
            lookController.ExecuteBehavior(agent, this);
		}
		
	}

	
	
	private Transform trackedEnemy;
	public Vector3 lastEnemyPosition;
	
	public void StartVisionCheck(Transform objectTransform)
	{
		if (controller.lineOfSightTracking) //if ai is being used
		{
			AITransform = objectTransform;
			trackedEnemy = objectTransform;
			controller = trackAndShoot;
			lookController = lookAtTarget;
			//	StartCoroutine(LineOfSightCheck());
		}
	}

	private void HealthHitHandler()
	{
		if (controller == wander || controller == moveToLastPos)
		{
			controller = runAway;
		}
	}

	public void ResetBehavior()
	{
//		Debug.Log(";kjsadjlkf;lkzladslkfj");
		this.AITransform = transform;
		this.controller = wander;
		this.lookController = agentLook;
//		Debug.Log(controller + " " + lookController + " " + AITransform + " " + this);
	}

	private void OnDisable()
	{
		
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
