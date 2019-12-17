using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ClickableObjectBase : MonoBehaviour, IClickableObject
{
    public float interactDistance = 2f;
    public float stoppingDistance = 2f;
    public bool movePlayer = true;
    protected Controller player;
    public string mouseOverText = "";
    
    protected bool active = false;

    public bool Active
    {
        get {
            
            return active;
            
        }
    }

    public void OnClicked(Controller newPlayer)
    {
        //Debug.Log($"{newPlayer} clicked on {this}. active: {active}", this);
        if (Active) return;
        
        active = true;
        //Debug.Log("Clicked");
        player = newPlayer;
        MovePlayerInRange(newPlayer);
    }
    
    private void MovePlayerInRange(Controller player)
    {
        
        if (movePlayer)
        {
            //Debug.Log("Starting move player");
            player.PlayerMoving?.Invoke();
            player.SetDestination(transform.position, stoppingDistance);
            StartCoroutine(MovePlayer());
            player.PlayerMoving = StopMovingPlayer;
        }
    }

    protected virtual void StopMovingPlayer()
    {
        //stop coroutine
        //Debug.Log("Stopping move player");
        StopCoroutine(MovePlayer());
        player.PlayerMoving = null;
        active = false;
        player.AnimIdle(true);
        //Debug.Log($"{player} setting idle to true");
    }

    private IEnumerator MovePlayer()
    {
        
        //Debug.Log("Starting move coroutine");
        while (Vector3.Distance(transform.position, player.transform.position) > interactDistance - .01f)
        {
            yield return new WaitForEndOfFrame();
        }
        OnPlayerInRange();
    }

    

    protected virtual void OnPlayerInRange()
    {
        
    }

    private void OnMouseEnter()
    {
        MouseOverText.AddObject?.Invoke(this);
    }

    private void OnMouseExit()
    {
        MouseOverText.RemoveObject?.Invoke(this);
    }
}
