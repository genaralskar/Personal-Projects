using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

[CreateAssetMenu(menuName = "Controllers/Player")]
public class PlayerController : Controller
{
	public float moveSpeed = 5;
	public override void ExecuteBehavior(NavMeshAgent agent, CharController charController)
	{
		Vector3 moveVector = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical")) * moveSpeed * Time.deltaTime;
		//covert to camera space
		moveVector = Quaternion.Euler(0, Camera.main.transform.rotation.eulerAngles.y, 0) * moveVector;
		agent.Move(moveVector);
		
		//look at
		Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
		RaycastHit hit;
		if (Physics.Raycast(ray, out hit))
		{
			Vector3 lookAtPoint = new Vector3(hit.point.x, agent.transform.position.y, hit.point.z);
			agent.transform.LookAt(lookAtPoint);
		}

		if (Input.GetMouseButton(0))
		{
			charController.weapon.FireWeapon();
		}
	}
}
