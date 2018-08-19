using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Note/Song")]
public class Song : ScriptableObject
{

	//public List<NoteType> notes;
	public float songLength;
	public float beatsPerMinute;
	public NoteManager noteManager;
	public AudioClip songAudio;
	[SerializeField] public List<NoteThing> notes;
	


	private void OnEnable()
	{
//		noteManager.beatsPerMinute = beatsPerMinute;
		float beatCount = songLength / 60 * beatsPerMinute;

		if (notes.Count < beatCount)
		{
			for (int i = notes.Count; i < beatCount; i++)
			{
				notes.Add(new NoteThing(i.ToString(), null));
			}
		}
		else if(notes.Count > beatCount)
		{
			for (int i = notes.Count; i > beatCount; i--)
			{
				notes.RemoveAt(notes.Count - 1);
			}
		}
		
		foreach (var thing in notes)
		{
			
			thing.key = notes.IndexOf(thing).ToString();
		//	Debug.Log("key changed to " + notes.IndexOf(thing));
		}
		
	}

	public void UpdateBeatNames()
	{
		
	}

//	public bool IsInteractive
//	{
//		get { return _isInteractive; }
//		set
//		{
//			_isInteractive = value;
//			Activate(_isInteractive);
//		}
//	}
	
}


[System.Serializable]
public class NoteThing
{
	[HideInInspector]
	public string key = "beat";
	public NoteType note;

	public NoteThing()
	{
		
	}

	public NoteThing(string key, NoteType type)
	{
		this.key = key;
		this.note = type;
	}
}
