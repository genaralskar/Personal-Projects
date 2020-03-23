using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TeleportPad : MonoBehaviour
{
    public GameObject player;
    
    public TeleportPad connectedPad;
    public Transform rotManage;


    public void Teleport()
    {
        //get offset
        Vector3 offset = transform.position - player.transform.position;
        //set rotManage to player rotation
        rotManage.localRotation = player.transform.rotation;

        PlayerFPSController c = player.GetComponent<PlayerFPSController>();
        c.hasControl = false;
        player.transform.position = connectedPad.transform.position - offset;
        connectedPad.rotManage.localRotation = rotManage.localRotation;
        player.transform.rotation = connectedPad.rotManage.rotation;
        Debug.Log(connectedPad.transform.position - offset);
        StartCoroutine(Tele());
    }

    private IEnumerator Tele()
    {
        yield return new WaitForSeconds(.1f);
        PlayerFPSController c = player.GetComponent<PlayerFPSController>();
        c.hasControl = true;
    }
}
