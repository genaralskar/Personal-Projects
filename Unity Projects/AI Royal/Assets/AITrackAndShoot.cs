using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

[CreateAssetMenu(menuName = "Controllers/AI Track and Shoot")]
public class AITrackAndShoot : Controller
{

	
	public float trackingRadius;
	public float trackingFuzz = 2;
	public float fuzzChangeTime = 1;
	
	public Vector3 lastKnownPosition;

	public LayerMask playerLayerMask;
	
	
	public override void ExecuteBehavior(NavMeshAgent agent, CharController charController )
	{
		Eyetrack(agent, charController);
		GunTrack(charController, agent);
		GunShoot(charController);
	}

	private void Eyetrack(NavMeshAgent agent, CharController charController)
	{
		Vector3 direction = charController.AITransform.position - charController.eyes.transform.position;
		RaycastHit hit;
		if (Physics.Raycast(charController.eyes.position, direction, out hit, Mathf.Infinity, charController.characterLayer))
		{
			charController.lastEnemyPosition = lastKnownPosition;
			charController.controller = charController.moveToLastPos;
		}
		else
		{
			//lastKnownPosition = hit.point;
			lastKnownPosition = charController.AITransform.position;
			//execute tracking behavior
			//rotate towards target
			FaceTarget(charController, agent);
			//move within raduis of target
			direction = direction.normalized;
			Debug.Log("direction: " + direction);
			
			Vector3 newPos = charController.AITransform.position - (new Vector3(direction.x + (Perlin(0) * trackingFuzz), 0, direction.z + (Perlin(10) * trackingFuzz)) * trackingRadius);
			Debug.Log("newPos = " + newPos);
//			Debug.Log("newPos : " + newPos);
			agent.destination = newPos;
		}
	}

	private void FaceTarget(CharController charController, NavMeshAgent agent)
	{
		Vector3 direction = (charController.AITransform.position - agent.transform.position).normalized;
		Quaternion lookRotation = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z));
		agent.transform.rotation = Quaternion.Slerp(agent.transform.rotation, lookRotation, Time.deltaTime * 5f);

	}

	private Quaternion FaceTargetLimits(CharController charController, NavMeshAgent agent)
	{
		Vector3 direction = (charController.AITransform.position - agent.transform.position).normalized;
		Quaternion lookRotation = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z));
		return Quaternion.Slerp(agent.transform.rotation, lookRotation, Time.deltaTime * 5f);
	}

	private void GunTrack(CharController charController, NavMeshAgent agent)
	{
		Quaternion rotateAmount = FaceTargetLimits(charController, agent);
		charController.gun.transform.rotation = rotateAmount;
		Vector3 rotaionLimit = charController.gun.transform.localRotation.eulerAngles;
//		Debug.Log(rotaionLimit);
		if(rotaionLimit.y > 15 && rotaionLimit.y < 180)
		{
			rotaionLimit.y = 15;
		}
		if(rotaionLimit.y < 345 && rotaionLimit.y > 180)
		{
			rotaionLimit.y = 345;
		}
		
		charController.gun.transform.localRotation = Quaternion.Euler(rotaionLimit);
	}

	private void GunShoot(CharController charController)
	{
		RaycastHit hit;
		if (Physics.SphereCast(charController.weapon.projSpawn.position, .2f, charController.weapon.transform.forward, out hit, 50, playerLayerMask))
		{
			charController.weapon.FireWeapon();
		}
	}

	public float Perlin(float seed)
	{
		return (Mathf.PerlinNoise(Time.time / fuzzChangeTime, seed + this.GetInstanceID()) - .5f) * 2;
	}
}
