using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ConeOfVision : MonoBehaviour
{

	public CharController charController;
	public LayerMask characterLayer;


	public List<Transform> charsInCone;
	
	private void OnTriggerEnter(Collider other)
	{
		charsInCone.Add(other.transform);
		StopAllCoroutines();
		StartCoroutine(VisionCheck());
	}

	private void OnTriggerExit(Collider other)
	{
		charsInCone.Remove(other.transform);
	}

	

	private IEnumerator VisionCheck()
	{
		yield return new WaitForSeconds(.1f);
		while (charsInCone.Count > 0)
		{
			bool charHit = false;
			foreach (var obj in charsInCone)
			{
				if(charController.controller == charController.wander 
				   || charController.controller == charController.moveToLastPos 
				   || charController.controller == charController.scan
				   || charController.controller == charController.runAway)
				{
	
					RaycastHit hit;
					Vector3 direction = obj.transform.position - charController.eyes.transform.position;
					float distance = Vector3.Distance(obj.transform.position, charController.eyes.transform.position);
					if (Physics.Raycast(charController.eyes.position, direction, out hit, distance, characterLayer)) //if raycast hits
					{
						Debug.Log("wall hit! " + gameObject);
					}
					else
					{
						//change behavior to trackandshoot
						charController.StartVisionCheck(obj);
						Debug.Log("hit enemy!" + gameObject);
						charHit = true;
					}
				}
			}
			yield return new WaitForEndOfFrame();
		}	
	}

	private void charSeen()
	{
		StopAllCoroutines();
		
	}
}
