using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Experimental;

[CreateAssetMenu(menuName = "Controller/Look At Target")]
public class AILookAtTarget : Controller
{

	public float turnSpeed = 1;

	public override void ExecuteBehavior(NavMeshAgent agent, CharController charController)
	{
		Look(agent, charController);
	}

	void Look(NavMeshAgent agent, CharController charController)
	{
		Transform tempTrans = new GameObject().transform;
		tempTrans.position = agent.transform.position;
	//	tempTranss.position = Vector3.zero;
	//	Transform tempTrans = Instantiate(agent.transform); //might be expensive to instantiate so often
		
		tempTrans.LookAt(charController.AITransform);
		Quaternion newRotation = Quaternion.RotateTowards(agent.transform.rotation, tempTrans.rotation, turnSpeed * Time.deltaTime);
//		Debug.Log("New Rotation = " + tempTrans.rotation.eulerAngles);
		
		Destroy(tempTrans.gameObject);
		agent.transform.rotation = newRotation;
	}
	
}
