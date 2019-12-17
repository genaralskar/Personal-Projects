using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ClickableObjectBase : MonoBehaviour, IClickableObject
{
    public float interactDistance = 2f;
    public float stoppingDistance = 2f;
    public bool movePlayer = true;
    public Controller player;
    public string mouseOverText = "";
    
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
        player.NewCobTarget = null;
        Debug.Log("setting Player to idle");
    }

    public virtual void OnPlayerInRange()
    {
        if(!alwaysInactive)
            busy = true;
        player.NewCobTarget = StopMovingPlayer;
        Debug.Log("NewCobTaget action assigned");
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
