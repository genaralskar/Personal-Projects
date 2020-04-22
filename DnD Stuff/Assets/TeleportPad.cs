using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TeleportPad : MonoBehaviour
{
    public enum PadType {Up, Down, Null}
    
    public static TeleportPad[] ports;

    private PlayerFPSController c;
    private GameObject player;
    
    public TeleportPad connectedPad;

    public PadType padType;
    public float yDist = 16f;

    private bool active = false;

    private void Awake()
    {
        c = FindObjectOfType<PlayerFPSController>();
        player = c.gameObject;
        
        Rotator.RotateBigStart += Disable;
        Rotator.RotateBigStop += Enable;
        
        if (ports == null)
            ports = FindObjectsOfType<TeleportPad>();
        
        Enable();
    }

    public void Teleport()
    {
        if (!active) return;
        if (!connectedPad) return;
        
        //Debug.Log("Teleporting!");
        
        //get offset
        Vector3 offset = transform.position - player.transform.position;
        //set rotManage to player rotation
        
        c.hasControl = false;
        player.transform.position = connectedPad.transform.position - offset;
        //Debug.Log("Teleported!");
        StartCoroutine(Tele());
    }

    private IEnumerator Tele()
    {
        yield return new WaitForSeconds(.1f);
        c.hasControl = true;
    }

    private void Disable()
    {
        active = false;
        //disable vfx
    }

    private void Enable()
    {
        GetConnectedPad();
        if (connectedPad)
        {
            //enable vfx
            active = true;
        }
    }

    private void GetConnectedPad()
    {
        List<TeleportPad> pads = new List<TeleportPad>();
        foreach (var port in ports)
        {
            if(port == this) continue;

            Vector3 comp = port.transform.position;
            if (port.transform.parent)
            {
                //Debug.Log("Parent!");
                comp = port.transform.parent.position - port.transform.position;
            }
                
            
            if (CompareXZ(comp))
            {
                pads.Add(port);
            }
        }
        
        foreach (var pad in pads)
        {
            //if the pad is properly above or below, AND that they arent the same pad type, ie always an up and down pair
            if (CompareY(pad.transform.position) == padType && pad.padType != padType)
            {
                connectedPad = pad;
                return;
            }
        }

        connectedPad = null;
    }

    private bool CompareXZ(Vector3 pos)
    {
        //move pos to same y level
        Vector3 newPos = new Vector3(pos.x, 0, pos.z);
        
        Vector3 p = transform.position;
        if(transform.parent)
            p = transform.parent.position - transform.position;

        p.y = 0;
        
        //Debug.Log($"Comparing {newPos} : {p}");
        
        float dist = Vector3.Distance(newPos, p);
        //true if close, false if not
        //Debug.Log("dist");
        return dist < .1f;
    }

    private PadType CompareY(Vector3 pos)
    {
        //Debug.Log("comparing y");
        float dist = transform.position.y - pos.y;
        
        if(Mathf.Abs(dist) > yDist)
                return PadType.Null;
        
        //if positive its down, if negative its up
        return dist < 0 ? PadType.Up : PadType.Down;
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = Color.green;
        if(connectedPad)
            Gizmos.DrawLine(transform.position, connectedPad.transform.position);
    }
}
