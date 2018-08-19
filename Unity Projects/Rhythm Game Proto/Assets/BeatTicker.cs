using System.Collections;
using System.Collections.Generic;
using RoboRyanTron.Unite2017.Events;
using UnityEngine;

public class BeatTicker : MonoBehaviour
{

	public NoteManager noteManager;
	public GameEvent beatTick;

	private double nextEventTime;
	
	void pUpdate() 
	{
		double time = AudioSettings.dspTime;
		print("time: " + Time.time);
		print("audio time: " + AudioSettings.dspTime);
		if (time >= nextEventTime) {
			
			//blip.PlayScheduled(nextEventTime);
			beatTick.Raise();
			print("bliip");
			
			nextEventTime += 60.0F / noteManager.beatsPerMinute * noteManager.beatsPerSegment;
			Debug.Log(nextEventTime);
			
		}
	}

	private void Start()
	{
		nextEventTime = AudioSettings.dspTime + noteManager.startDelay;
		StartCoroutine(Tick());
	}

	private IEnumerator Tick()
	{
		yield return new WaitForSeconds(noteManager.startDelay);
		while (true)
		{
			double time = AudioSettings.dspTime;
			print("time: " + Time.time);
			print("audio time: " + AudioSettings.dspTime);
			if (time >= nextEventTime) {
			
				//blip.PlayScheduled(nextEventTime);
				beatTick.Raise();
				print("bliip");
			
				nextEventTime += 60.0F / noteManager.beatsPerMinute * noteManager.beatsPerSegment;
			//	Debug.Log(nextEventTime);
				yield return new WaitForEndOfFrame();
			}
		}
	}
}
