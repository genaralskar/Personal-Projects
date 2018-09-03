using System.Collections;
using System.Collections.Generic;
using UnityEditor.Graphing.Util;
using UnityEngine;
using UnityEngine.UI;

public class UICounter : MonoBehaviour
{

	public FloatValue counter;
	public string counterWords = "Players Left: ";
	public Text counterText;
	
	private void OnEnable()
	{
		counter.updateValue += CounterUpdateHandler;
		CounterUpdateHandler();
	}

	private void CounterUpdateHandler()
	{
		counterText.text = counterWords + counter.value.ToString();
	}

	private void OnDisable()
	{
		counter.value = 0;
		counter.updateValue -= CounterUpdateHandler;
	}
}
