using System.Collections.Generic;
using UnityEngine;

public class BotController : MonoBehaviour
{

    private List<PlayerController> bots = new List<PlayerController>();

    private void Awake()
    {
        FindObjectOfType<TwitchChatCommands>().Bot.AddListener(BotHandler);
    }

    private void BotHandler(ChatMessage m)
    {
        switch (m.splitMessage[1])
        {
            case "add":

                //if nothing after bots, spawn 1 bot
                if (m.splitMessage.Length <= 2)
                {
                    bots.Add(PlayerManager.GetOrAddPlayerToScene($"bot_{bots.Count}"));
                }
                //if text after bot, check if its a number or not
                else
                {
                    int num = 1;
                    if (int.TryParse(m.splitMessage[2], out num))
                    {
                        //if its a number, add that many bots
                        for (int i = 0; i < num; i++)
                        {
                            bots.Add(PlayerManager.GetOrAddPlayerToScene($"bot_{bots.Count}"));
                        }
                    }
                    else
                    {
                        //not a number, more words
                    }
                }
                break;
        }
    }

    private void SpawnBots(string amount)
    {

    }
}
