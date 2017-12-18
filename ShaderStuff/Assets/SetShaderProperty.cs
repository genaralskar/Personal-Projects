using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetShaderProperty : MonoBehaviour {

	public Material mat;
	public string propertyName;
	public Transform obj;

	void Update()
	{
		if(obj != null)
		{
			mat.SetVector(propertyName, obj.position);
		}
		else
			Debug.Log("Assign an object you dork!");
	}

}
