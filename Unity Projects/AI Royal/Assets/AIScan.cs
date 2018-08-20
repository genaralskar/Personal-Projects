using System.Collections;
using System.Collections.Generic;
using System.Security.Permissions;
using UnityEditor.Experimental.Rendering;
using UnityEngine;
using UnityEngine.AI;

[CreateAssetMenu(menuName = "Controllers/Scan")]
public class AIScan : Controller
{
	public float rotationSpeed = 10;
	public float timer = 0;
	public override void ExecuteBehavior(NavMeshAgent agent, CharController charController)
	{
		//rotate 360
		Vector3 rotation = agent.transform.rotation.eulerAngles;
		rotation.y += 360 / rotationSpeed * Time.deltaTime;
		agent.transform.rotation = Quaternion.Euler(rotation);

		timer += Time.deltaTime;
		
		if (timer >= rotationSpeed)
		{
			timer = 0;
			charController.controller = charController.wander;
		}
	}
}
