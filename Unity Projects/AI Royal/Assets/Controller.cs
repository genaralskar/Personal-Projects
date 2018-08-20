using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Events;

public abstract class Controller : ScriptableObject
{
	public bool lineOfSightTracking = true;

	public UnityAction lineOfSightBroken;
	public UnityAction trackedCharLost;
	
	
	public abstract void ExecuteBehavior(NavMeshAgent agent, CharController charController);

}
