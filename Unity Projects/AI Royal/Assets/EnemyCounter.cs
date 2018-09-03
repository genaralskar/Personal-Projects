using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class EnemyCounter : MonoBehaviour
{	
	public FloatValue enemyCounter;
	
	private void OnEnable()
	{
		if(Application.isPlaying)
		{
			enemyCounter.value += 1f;
			enemyCounter.updateValue();
		}
	}

	private void OnDisable()
	{
		if (Application.isPlaying)
		{
			enemyCounter.value -= 1f;
			enemyCounter.updateValue();
		}
		
	}
}
