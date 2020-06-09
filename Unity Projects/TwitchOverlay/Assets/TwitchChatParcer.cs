using UnityEngine;
using UnityEngine.Events;

/// <summary>
/// Recieves chat messages and parces out their name and message
/// </summary>
public class TwitchChatParcer : MonoBehaviour
{
    public ChatMessageEvent NewChatMessage = new ChatMessageEvent();

    private TwitchIRC IRC;

    private void Awake()
    {
        IRC = FindObjectOfType<TwitchIRC>();
        IRC.messageRecievedEvent.AddListener(MessageRecievedEventHandler);
    }

    //get name and message data from incoming chat message
    private void MessageRecievedEventHandler(string msg)
    {
        int msgIndex = msg.IndexOf("PRIVMSG #");
        string msgString = msg.Substring(msgIndex + IRC.channelName.Length + 11);
        string user = msg.Substring(1, msg.IndexOf('!') - 1);

        NewChatMessage?.Invoke(new ChatMessage(user, msgString));
    }
}

public class ChatMessageEvent : UnityEvent<ChatMessage> {}