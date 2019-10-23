using System.Collections;
using System.Collections.Generic;
using UnityEditor.Experimental.Rendering;
using UnityEngine;

public class WeaponMono : MonoBehaviour
{

	public Weapon weapon;
	public Transform projSpawn;
	public AudioSource fireSource;

	public float rotateSpeed = 10;
	public float bounceSpeed = 1;
	public float bounceAmplitude = 1;
	public Vector3 startPosition;

	private void Start()
	{
		StartSpin();
	}

	private void OnTriggerEnter(Collider other)
	{
		
	}

	private void OnTriggerExit(Collider other)
	{
		
	}

	public void StartSpin()
	{
		StartCoroutine(Rotate());
	}

	public void StopSpin()
	{
		StopAllCoroutines();
	}

	private IEnumerator Rotate()
	{
		startPosition = transform.position;
		while (true)
		{
			yield return new WaitForEndOfFrame();
			//position
			Vector3 newPos = new Vector3(startPosition.x, (Mathf.Sin(Time.time * bounceSpeed) * bounceAmplitude) + startPosition.y , startPosition.z);
//			print(newPos.y);
			transform.position = newPos;
			
			//rotation
			transform.Rotate(Vector3.up * Time.deltaTime * rotateSpeed);
		}
	}
}
