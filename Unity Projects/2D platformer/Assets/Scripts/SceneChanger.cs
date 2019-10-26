using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.SceneManagement;


public class SceneChanger : MonoBehaviour
{
    public static UnityAction<int> ChangeScene;

    private void Awake()
    {
        ChangeScene = ChangeSceneHandler;
        DontDestroyOnLoad(this.gameObject);
    }

    public void ChangeSceneHandler(int newScene)
    {
        SceneManager.LoadScene(newScene);
    }
}
