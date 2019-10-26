using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PopulateLevelsPanel : MonoBehaviour
{
    public int numLevels;
    public GameObject levelSelectButton;

    private void Start()
    {
        for (int i = 0; i < numLevels; i++)
        {
            GameObject obj = Instantiate(levelSelectButton, transform);
            obj.name = $"Level {i + 1}";
            //change number text
            obj.GetComponent<LevelSelectButton>().level = i + 1;
        }
    }
}
