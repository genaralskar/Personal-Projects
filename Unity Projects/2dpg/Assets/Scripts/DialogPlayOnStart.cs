using UnityEngine;

[RequireComponent(typeof(DialogStarter))]
public class DialogPlayOnStart : MonoBehaviour
{
    private DialogStarter start;
    private void Awake()
    {
        start = GetComponent<DialogStarter>();
    }
    // Start is called before the first frame update
    void Start()
    {
        start.StartDialog();
    }

}
