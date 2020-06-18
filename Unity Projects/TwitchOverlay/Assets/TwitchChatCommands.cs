using UnityEngine;
using UnityEngine.Events;

/// <summary>
/// Reads the chat messages and runs its command, if one is in the message
/// </summary>
public class TwitchChatCommands : MonoBehaviour
{
    [SerializeField]
    private char prefixChar = '!';


    //Chat Command Events
    public ChatMessageEvent Play = new ChatMessageEvent();
    public ChatMessageEvent Sprite = new ChatMessageEvent();
    public ChatMessageEvent Gold = new ChatMessageEvent();
    public ChatMessageEvent Bot = new ChatMessageEvent();
    public ChatMessageEvent Gather = new ChatMessageEvent();
    public ChatMessageEvent Skill = new ChatMessageEvent();

    public UnityEvent Save = new UnityEvent();
    public UnityEvent Load = new UnityEvent();

    private void Awake()
    {

    }

    private void Start()
    {
        FindObjectOfType<TwitchChatParcer>().NewChatMessage.AddListener(OnChatMessageHandler);
    }

    public void OnChatMessageHandler(ChatMessage m)
    {
        //add a check for in the player is in the scene

        //check if first part of the message is the prefixChar. If not, return
        if(m.message[0] != prefixChar)
        {
            //show chat above player's head
            if (PlayerManager.IsPlayerInScene(m.name))
            {
                PlayerManager.GetOrAddPlayerToScene(m.name).SetChatMessage(m);
            }
            return;
        }

        //get first split to compare wtih
        string checkString = m.splitMessage[0];

        //remove the prefixChar from the first split
        checkString = checkString.Remove(0, 1);

        //Invoke proper chat command
        switch(checkString)
        {
            case "play":
                Play?.Invoke(m);
                break;
            case "sprite":
                Sprite?.Invoke(m);
                break;
            case "gold":
                Gold?.Invoke(m);
                break;
            case "bot":
                Bot?.Invoke(m);
                break;
            case "gather":
                Gather?.Invoke(m);
                break;
            case "skill":
                Skill?.Invoke(m);
                break;

            case "save":
                Save?.Invoke();
                break;
            case "load":
                Load?.Invoke();
                break;
        }
    }
}