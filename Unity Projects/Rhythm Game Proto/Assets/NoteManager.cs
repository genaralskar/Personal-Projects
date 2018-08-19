using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Note/Note Manager")]
public class NoteManager : ScriptableObject
{

	public float noteSpeed = 5;
	public float beatsPerMinute = 120;
	public float beatsPerSegment = 1;

	public float startDelay = 2;

	public List<Note> activeNotes;

	public void AddNote(Note note)
	{
		if (!activeNotes.Contains(note))
		{
			activeNotes.Add(note);
//			Debug.Log(note + " added to list");
		}
			
	}

	public void RemoveNote(Note note)
	{
		if (activeNotes.Contains(note))
		{
			activeNotes.Remove(note);
//			Debug.Log(note + " removed from list");
		}
			
	}

}
