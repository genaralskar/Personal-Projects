using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class ClickableObjectBase : MonoBehaviour, IClickableObject
{
    public float interactDistance = 2f;
    public float stoppingDistance = 2f;
    public bool movePlayer = true;
    public Controller player;
    public string mouseOverText = "";

    public UnityEvent onPlayerInRange;
    
    protected bool busy = false;

    public bool Busy
    {
        get { return busy; }
    }

    public bool alwaysInactive = false;

    public void SetActive(bool value)
    {
        busy = value;
    }

    public void OnClicked(Controller newPlayer)
    {
        newPlayer.MovePlayerInRange(this);
        //Debug.Log($"{newPlayer} clicked on {this}. active: {active}", this);
        //if (Active) return;
        
        //active = true;
        //Debug.Log("Clicked");
        //player = newPlayer;
        //MovePlayerInRange(newPlayer);
    }

    protected virtual void StopMovingPlayer()
    {
        //stop coroutine
        //Debug.Log("Stopping move player");
        //StopCoroutine(MovePlayer());
        //player.PlayerMoving = null;
        //active = false;
        //player.AnimIdle(true);
        //Debug.Log($"{player} setting idle to true");
        StopAllCoroutines();
        busy = false;
        player.AnimIdle(true);
        player.cobTarget = null;
        player.NewCobTarget = null;
        //Debug.Log($"Stopped moving player{player.NewCobTarget}");
        OnPlayerLeave();
        //Debug.Log("setting Player to idle");
    }

    public virtual void OnPlayerInRange()
    {
        if(!alwaysInactive)
            busy = true;
        player.NewCobTarget = StopMovingPlayer;
        onPlayerInRange?.Invoke();
        //Debug.Log("NewCobTaget action assigned");
    }

    protected virtual void OnPlayerLeave()
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
    
    
    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.blue;
        Gizmos.DrawWireSphere(transform.position, interactDistance);
    }
}
