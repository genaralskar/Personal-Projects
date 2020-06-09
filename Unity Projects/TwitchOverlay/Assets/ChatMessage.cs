public struct ChatMessage
{
    public string name;
    public string message;
    public string[] splitMessage;

    public ChatMessage(string name, string message)
    {
        this.name = name;
        this.message = message;
        this.splitMessage = message.Split(' ');
    }
}
