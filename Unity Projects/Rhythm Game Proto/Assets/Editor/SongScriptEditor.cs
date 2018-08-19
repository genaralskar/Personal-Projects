using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(Song))]
public class SongScriptEditor : PropertyDrawer {

	/*public override void OnGUI(Rect position, SerializedProperty property, GUIContent label)
	{
		Song mySongScript = (Song)target;

		mySongScript.songLength = EditorGUILayout.FloatField("Song Length", mySongScript.songLength);
		mySongScript.beatsPerMinute = EditorGUILayout.FloatField("Beats Per Minute", mySongScript.beatsPerMinute);
		mySongScript.noteManager = EditorGUILayout.ObjectField("Note Manager", mySongScript.noteManager);
		
		mySongScript.beatsPerMinute = EditorGUILayout.FloatField("Beats Per Minute", mySongScript.beatsPerMinute);
	}*/
}
