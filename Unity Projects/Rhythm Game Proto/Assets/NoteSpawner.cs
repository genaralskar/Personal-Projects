using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using RoboRyanTron.Unite2017.Events;

public class NoteSpawner : MonoBehaviour
{

	public Transform spawnLocation;
	public Transform noteDestination;
	public NoteManager noteManager;
	public Song song;
	public GameEvent beatTick;
	public AudioSource blip;
	public AudioSource songAudio;

	private float secondsPerNote;
	private float spawnDistance;

	private void Awake()
	{
		noteManager.beatsPerMinute = song.beatsPerMinute;
		secondsPerNote = 60 / noteManager.beatsPerMinute * noteManager.beatsPerSegment;
		SpawnNotes();
		StartCoroutine(Beep());
	}

	public void SpawnNotes()
	{
		
			
		//note speed, distance, and frequency
		spawnDistance = noteManager.noteSpeed * secondsPerNote; //distance between notes
			
		//spawn note
		foreach (var beat in song.notes)
		{
			if (beat.note != null)
			{
				if (beat.note.notePrefab != null)
				{
					Spawn(beat.note.notePrefab, song.notes.IndexOf(beat));
					//	print("spawn note");
				}
			}
		}
	}

	private IEnumerator Beep()
	{
		yield return new WaitForSeconds(noteManager.startDelay);

		songAudio.clip = song.songAudio;
		songAudio.Play();

		float timer = 0;
		while (false)
		{
			/*timer += Time.deltaTime;
			if (timer >= secondsPerNote)
			{
				
				timer = 0;
			}*/
			
		
			/*yield return new WaitForEndOfFrame();*/
			yield return new WaitForSecondsRealtime(secondsPerNote);
		}
		yield return new WaitForSeconds(secondsPerNote);
	}

	private void Spawn(GameObject obj, int index)
	{
		GameObject newNote = Instantiate(obj, noteDestination);
		newNote.GetComponent<Note>().startDelay = noteManager.startDelay;
		newNote.transform.localPosition = new Vector3(0, spawnDistance * (index), 0);
		newNote.GetComponent<Note>().StartMove();
	//	Debug.Log("spawn!");
		
	}
	
	// 1 / (bpm / 60) bpm to seconds

}
