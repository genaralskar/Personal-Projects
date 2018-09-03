using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[CreateAssetMenu(menuName = "Values/Float")]
public class FloatValue : ScriptableObject
{
	
	public float value;

	public UnityAction updateValue = delegate {  };

	public bool constant;

	private void OnEnable()
	{
		if(!constant)
			value = 0;
	}
}
