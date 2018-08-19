using System.Collections;
using UnityEngine;

public class Note : MonoBehaviour
{

	public NoteType type;
	public float startDelay = 5;

	private void OnEnable()
	{
		type.noteManager.AddNote(this);
	}

	private void OnDisable()
	{
		type.noteManager.RemoveNote(this);
		StopAllCoroutines();
	}

	public void StartMove()
	{
		StartCoroutine(Move());
	}

	private IEnumerator Move()
	{
		yield return new WaitForSeconds(startDelay);
		
		while (true)
		{
			transform.Translate(Vector3.down * type.noteManager.noteSpeed * Time.deltaTime);
			
//			Vector3 newPos = new Vector3(0, type.noteManager.noteSpeed, 0);
//			transform.position -= newPos * Time.deltaTime;
			//print(transform.position);
			yield return new WaitForEndOfFrame();
			
		}
		
	}
}
