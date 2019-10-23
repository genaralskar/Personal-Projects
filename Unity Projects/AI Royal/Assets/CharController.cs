using System.Collections;
using System.Collections.Generic;
using System.Timers;
using UnityEditor;
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
	public float speed = 5;

	public Transform gun;
	public WeaponManager weapon;

	[Tooltip("Everything except the player selected")]
	public LayerMask characterLayer;
	
	[HideInInspector]
	public NavMeshAgent agent;

	public Health health;

	//move behaviors
	public Controller wander;
	public Controller trackAndShoot;
	public Controller moveToLastPos;
	public Controller scan;
	public Controller runAway;

	//look behaviors
	public Controller lookAtTarget;
	public Controller agentLook;

	[HideInInspector]
	public PlayerSpawner spawner;
	public GameObject deathParticles;
	

	private void Start()
	{
		health.HealthDamage += HealthHitHandler;
		health.HealthAtZero += OnDeath;
		
		agent = GetComponent<NavMeshAgent>();
		
		wander = InstanceBehaviors(wander);
		trackAndShoot = InstanceBehaviors(trackAndShoot);
		moveToLastPos = InstanceBehaviors(moveToLastPos);
		scan = InstanceBehaviors(scan);
		runAway = InstanceBehaviors(runAway);
		
		lookAtTarget = InstanceBehaviors(lookAtTarget);
		agentLook = InstanceBehaviors(agentLook);

		agent.speed = speed;
		
		
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

	
	public Vector3 lastEnemyPosition;
	
	public void StartVisionCheck(Transform objectTransform)
	{
		if (controller.lineOfSightTracking) //if ai is being used
		{
			AITransform = objectTransform;
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

	private void OnDeath()
	{
		GameObject dp = Instantiate(deathParticles);
		dp.transform.position = transform.position;
	}

	private void OnDisable()
	{
		spawner.RemovePlayer(gameObject);
		if (Application.isPlaying)
		{
			
		}
		
	}

}
