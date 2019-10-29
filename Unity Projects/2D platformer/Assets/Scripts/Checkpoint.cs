using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Checkpoint : MonoBehaviour
{
    public GameObject flagUp;
    public GameObject flagDown;
    public Collider2D col;

    public bool isCurrentCheckpoint;

    public static UnityAction checkpoint;
    public static UnityAction<GameObject> Respawn;
    public static Vector3 respawnPosition;

    private void Awake()
    {
        col = GetComponent<Collider2D>();
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        SetCheckpoint();
    }

    private void SetCheckpoint()
    {
        col.enabled = false;

        flagDown.gameObject.SetActive(false);
        flagUp.gameObject.SetActive(true);
        
        isCurrentCheckpoint = true;
        checkpoint?.Invoke();
        checkpoint = ResetCheckpoint;
        Respawn += RespawnHandler;
        Checkpoint.respawnPosition = transform.position;
    }

    private void ResetCheckpoint()
    {
        Respawn -= RespawnHandler;
        col.enabled = true;

        flagUp.gameObject.SetActive(false);
        flagDown.gameObject.SetActive(true);
        
        isCurrentCheckpoint = false;
    }

    private void RespawnHandler(GameObject player)
    {
        //player.transform.position = transform.position;
    }
}
