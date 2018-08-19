using UnityEngine;

[CreateAssetMenu(menuName = "Note/Note Type")]
public class NoteType : ScriptableObject
{
    public NoteManager noteManager;
    public GameObject notePrefab;
}
