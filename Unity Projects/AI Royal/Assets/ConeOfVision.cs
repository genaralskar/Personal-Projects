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
		yield return new WaitForSeconds(.05f);
		while (charsInCone.Count > 0)
		{
			List<Transform> toRemove = new List<Transform>();
			foreach (var trans in charsInCone)
			{
				if (trans.gameObject.activeInHierarchy == false)
				{
					toRemove.Add(trans);
				}
			}

			foreach (var trans in toRemove)
			{
				charsInCone.Remove(trans);
			}
			
			foreach (var obj in charsInCone)
			{
				if(charController.controller == charController.wander 
				   || charController.controller == charController.moveToLastPos 
				   || charController.controller == charController.scan )
				{
	
					RaycastHit hit;
					Vector3 direction = obj.transform.position - charController.eyes.transform.position;
					float distance = Vector3.Distance(obj.transform.position, charController.eyes.transform.position);
					if (Physics.Raycast(charController.eyes.position, direction, out hit, distance, characterLayer)) //if raycast hits
					{
//						Debug.Log("wall hit! " + gameObject);
					}
					else
					{
						//change behavior to trackandshoot
//						Debug.Log("Staring vision check");
						charController.StartVisionCheck(obj);
//						Debug.Log("hit enemy!" + gameObject);
						
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
