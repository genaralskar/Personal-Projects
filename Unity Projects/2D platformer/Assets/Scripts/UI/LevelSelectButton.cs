using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class LevelSelectButton : MonoBehaviour
{
    public int level;

    private void Start()
    {
        GetComponentInChildren<TextMeshProUGUI>().text = level.ToString();
    }

    public void ChangeLevel()
    {
        SceneChanger.ChangeScene?.Invoke(level);
    }
}
