﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

public class GatherPoint : ClickableObjectBase
{
    
    public Controller.PlayerAnim anim;
    public GameObject FullModel;
    public GameObject EmptyModel;

    public float gatherTime = 4;
    public float regrowTime = 10;

    public Item item;
    public int itemAmount = 1;

    private bool full = true;

    public bool Full => full;

    private string enumName
    {
        get
        {
            return Enum.GetName(typeof(Controller.PlayerAnim), anim);
        }
    }

    protected override void OnPlayerInRange()
    {
        //Debug.Log($"{player} Player in range?");
        if (!full) return;
        //Debug.Log($"{player} Player in range");
        player.gathering = true;
        //start playing animation on player
        //player.AnimSetBool(enumName, true);
        player.AnimIdle(false);
        player.AnimsSetTrigger(enumName);
        StopAllCoroutines();
        StartCoroutine(Gather());
        StartCoroutine(RotatePlayer());

        //rotate player towards resource


        //Debug.Log("Got em");
    }

    protected override void StopMovingPlayer()
    {
        //Debug.Log($"{player} stopping playerMovement");
        StopAllCoroutines();
        base.StopMovingPlayer();
        //Debug.Log("Stop Gathering!");
        //player.AnimSetBool(enumName, false);
        
    }

    private void UpdateModel(bool value)
    {
        full = value;
        FullModel.SetActive(value);
        EmptyModel.SetActive(!value);
        GetComponent<Collider>().enabled = value;
        if (!value)
        {
            StopMovingPlayer();
            StartCoroutine(Regrow());
        }
    }

    private IEnumerator Gather()
    {
        float gatherRate = gatherTime + Random.Range(-1f, 1f);
        //Debug.Log($"{player} Start Gathering!");
        yield return new WaitForSeconds(gatherRate);
        //Debug.Log($"{player} success gather?");
        GatherSucess();

        //StartCoroutine(Regrow());
    }

    public void GatherSucess()
    {
        //Debug.Log($"{player} success gather");
        UpdateModel(false);
        player.AddItem(item, itemAmount);
        //Inventory.AddItem(item, itemAmount);
        
    }

    private IEnumerator Regrow()
    {
        //Debug.Log("Regrowing");
        yield return new WaitForSeconds(regrowTime);
        UpdateModel(true);
    }

    private IEnumerator RotatePlayer()
    {
        while (active)
        {
            yield return new WaitForFixedUpdate();
            Vector3 pos = transform.position;
            pos.y = 0;
            Vector3 pPos = player.transform.position;
            pPos.y = 0;
        
            Vector3 direction = pos - pPos;

            //direction = Vector3.Slerp(player.transform.rotation.eulerAngles, direction, .1f);
            player.transform.rotation = Quaternion.LookRotation(direction);
            //Debug.Log("rotation = " + direction);
        }
    }
}
