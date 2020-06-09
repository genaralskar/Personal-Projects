using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class PlayerController : MonoBehaviour
{
    public Player player;
    [SerializeField]
    private float moveSpeed = 5f;

    private Vector2 desiredPosition; 

    private Rigidbody2D rb;
    private Animator anims;

    [Header("Art Stuff")]
    [SerializeField]
    private SpriteRenderer spriteRenderer;

    [Header("Chat And Name")]
    private Coroutine chatC;
    [SerializeField]
    private TextMeshPro nameText;
    [SerializeField]
    private TextMeshPro messageText;

    private void Awake()
    {
        rb = GetComponent<Rigidbody2D>();
        anims = GetComponent<Animator>();
    }

    private void Start()
    {
        //play intro animation
    }

    private void FixedUpdate()
    {
        if (Vector2.Distance(transform.position, desiredPosition) < 1f) return;
    }

    public void SetupPlayer()
    {
        Debug.Log("Player Name " + player.name);
        SetName(player.name);
        SetSprite(player.sprite);
    }

    private void SetName(string name)
    {
        nameText.text = name;
    }

    public void SetSprite(Sprite newSprite)
    {
        if (newSprite == null) return;
        spriteRenderer.sprite = newSprite;
    }

    private void MoveTo(Vector2 obj)
    {
        desiredPosition = obj;
    }

    private void Move()
    {
        //get direction
        Vector2 move = desiredPosition - (Vector2)transform.position;
        move.y = 0;

        rb.AddForce(move * moveSpeed);
    }

    public void SetChatMessage(ChatMessage m)
    {
        SetChatMessage(m.message);
    }

    public void SetChatMessage(string m)
    {
        if (chatC != null)
        {
            StopCoroutine(chatC);
        }
        chatC = StartCoroutine(ChatMessage(m));
    }

    public void StartGather(GatherPoint point)
    {
        //Move to gather point
        //Start Gathering
    }

    private IEnumerator ChatMessage(string message)
    {
        float timer = 0;
        messageText.gameObject.SetActive(true);
        messageText.text = message;

        WaitForEndOfFrame wait = new WaitForEndOfFrame();
        while (timer < 3f)
        {
            timer += Time.deltaTime;
            yield return wait;
        }

        messageText.gameObject.SetActive(false);
    }


}
