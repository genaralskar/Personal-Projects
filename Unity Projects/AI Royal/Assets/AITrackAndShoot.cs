using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

[CreateAssetMenu(menuName = "Controllers/AI Track and Shoot")]
public class AITrackAndShoot : Controller
{

	
	public float trackingRadius = 5;
	public float trackingFuzz = 1;
	public float fuzzChangeTime = 5;
	
	public Vector3 lastKnownPosition;

	[Tooltip("Only have the player selected")]
	public LayerMask playerLayerMask;
	
	
	public override void ExecuteBehavior(NavMeshAgent agent, CharController charController)
	{
		
		if (charController.AITransform.gameObject.activeInHierarchy == false)
		{
//			Debug.Log(charController);
			charController.ResetBehavior();
			return;
		}
		
		
		
		Eyetrack(agent, charController);
//		GunTrack(charController, agent);
		GunShoot(charController);
	}

	private void Eyetrack(NavMeshAgent agent, CharController charController)
	{
//		Debug.Log("Eye tracking");
		lastKnownPosition = charController.AITransform.position;
		Vector3 direction = lastKnownPosition - charController.transform.position;
		RaycastHit hit;
		if (Physics.Raycast(charController.transform.position, direction, out hit, direction.magnitude + .1f, charController.characterLayer)) //if a wall is hit, change to last pos movement
		{
//			Debug.Log("move to last Pos");
			charController.lastEnemyPosition = lastKnownPosition;
			charController.controller = charController.moveToLastPos;
		}
		else
		{
			//execute tracking behavior
			//rotate towards target
		//	FaceTarget(charController, agent);
			
			//move within raduis of target
			direction = direction.normalized;
		//	Debug.Log("direction: " + direction);
			
			Vector3 newPos = charController.AITransform.position - (new Vector3(direction.x + (Perlin(0) * trackingFuzz), 0, direction.z + (Perlin(10) * trackingFuzz)) * trackingRadius);
//			Debug.Log("newPos = " + newPos);
//			Debug.Log("newPos : " + newPos);
			agent.destination = newPos;
		}
	}

//	private void FaceTarget(CharController charController, NavMeshAgent agent)
//	{
//		Vector3 direction = (charController.AITransform.position - agent.transform.position).normalized;
//		Quaternion lookRotation = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z));
//		agent.transform.rotation = Quaternion.Slerp(agent.transform.rotation, lookRotation, Time.deltaTime * 5f);
//
//	}

//	private Quaternion FaceTargetLimits(CharController charController, NavMeshAgent agent)
//	{
//		Vector3 direction = (charController.AITransform.position - agent.transform.position).normalized;
//		Quaternion lookRotation = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z));
//		return Quaternion.Slerp(agent.transform.rotation, lookRotation, Time.deltaTime * 5f);
//	}

//	private void GunTrack(CharController charController, NavMeshAgent agent)
//	{
//		Quaternion rotateAmount = FaceTargetLimits(charController, agent);
//		charController.gun.transform.rotation = rotateAmount;
//		Vector3 rotaionLimit = charController.gun.transform.localRotation.eulerAngles;
////		Debug.Log(rotaionLimit);
//		if(rotaionLimit.y > 15 && rotaionLimit.y < 180)
//		{
//			rotaionLimit.y = 15;
//		}
//		if(rotaionLimit.y < 345 && rotaionLimit.y > 180)
//		{
//			rotaionLimit.y = 345;
//		}
//		
//		charController.gun.transform.localRotation = Quaternion.Euler(rotaionLimit);
//	}

	private void GunShoot(CharController charController)
	{
		RaycastHit hit;
		if (Physics.SphereCast(charController.weapon.projSpawn.position, .5f, charController.transform.forward, out hit, 50, playerLayerMask)) //if hits a player, shoot gun
		{
			charController.weapon.FireWeapon();
			charController.agent.speed = charController.speed  * .7f;
		}
		else
		{
			charController.agent.speed = charController.speed;
		}
	}

	private float Perlin(float seed)
	{
		return (Mathf.PerlinNoise(Time.time / fuzzChangeTime, seed + this.GetInstanceID() ) - .5f) * 2;
	}
}
