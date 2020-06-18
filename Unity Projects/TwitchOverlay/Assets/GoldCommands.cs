using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GoldCommands : MonoBehaviour
{
    private void Awake()
    {
        FindObjectOfType<TwitchChatCommands>().Gold.AddListener(OnGold);
    }

    private void OnGold(ChatMessage m)
    {
        Player p = PlayerManager.GetOrAddPlayer(m.name);

        if (m.splitMessage.Length <= 1)
        {
            if (PlayerManager.IsPlayerInScene(m.name))
            {
                PlayerManager.GetOrAddPlayerToScene(m.name).SetChatMessage($"I have {PlayerManager.GetOrAddPlayer(m.name).gold} gold");
                return;
            }
        }

        switch (m.splitMessage[1])
        {
            case "add":
                if (m.splitMessage.Length == 3)
                {
                    int num = 0;
                    if (int.TryParse(m.splitMessage[2], out num))
                    {
                        //if its a number, add that many bots
                        p.AddGold(num);
                    }
                    else
                    {
                        //not a number, more words
                    }
                }
                //if there's nothing after the add
                else if(m.splitMessage.Length == 2)
                {
                    //add 1 gold
                    p.AddGold(1);
                }
                break;
        }
    }
}
