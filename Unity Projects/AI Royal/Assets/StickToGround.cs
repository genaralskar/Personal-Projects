using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class StickToGround : MonoBehaviour {
	private void Awake()
	{
		RaycastHit hit;
		Ray ray = new Ray(transform.position, Vector3.down);
		if (Physics.Raycast(ray, out hit))
		{
			transform.position = hit.point;
		}

		GetComponent<NavMeshAgent>().enabled = true;
	}
}
