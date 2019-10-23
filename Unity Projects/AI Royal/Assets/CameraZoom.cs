using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class CameraZoom : MonoBehaviour
{

	public PlayableDirector director;
	public PlayableAsset zoomIn;
	public PlayableAsset zoomOut;

	public void ZoomIn()
	{
		director.playableAsset = zoomIn;
		director.Play();
	}
	
	public void ZoomOut()
	{
		director.playableAsset = zoomOut;
		director.Play();
	}
}
