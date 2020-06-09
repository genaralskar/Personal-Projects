using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChangePlayerSprite : MonoBehaviour
{
    [SerializeField]
    private Sprite[] sprites;

    private void Awake()
    {
        FindObjectOfType<TwitchChatCommands>().Sprite.AddListener(SpriteHandler);
    }

    private void SpriteHandler(ChatMessage m)
    {
        Debug.Log("Sprite" + m.splitMessage[1]);
        int i = -1;
        switch(m.splitMessage[1])
        {
            case "red":
                i = 0;
                break;
            case "green":
                i = 1;
                break;
            case "blue":
                i = 2;
                break;
            case "purple":
                i = 3;
                break;
        }

        if(i != -1)
            PlayerManager.GetOrAddPlayerToScene(m.name).SetSprite(sprites[i]);
    }
}
