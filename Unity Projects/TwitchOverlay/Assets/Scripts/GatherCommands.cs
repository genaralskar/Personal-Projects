using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GatherCommands : MonoBehaviour
{
    public GatherPoint woodPoint;
    public GatherPoint orePoint;

    private void Awake()
    {
        FindObjectOfType<TwitchChatCommands>().Gather.AddListener(GatherHandler);
    }

    private void GatherHandler(ChatMessage m)
    {
        if (m.splitMessage.Length <= 1) return;
        GatherPoint gp = null;
        switch(m.splitMessage[1])
        {
            case "wood":
                gp = woodPoint;
                break;
            case "ore":
                gp = orePoint;
                break;
        }
        if(gp != null)
            PlayerManager.GetOrAddPlayerToScene(m.name).StartGather(gp);
    }
}
