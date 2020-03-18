using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class CubeStateManager : MonoBehaviour
{
    public static UnityAction StateEnter;
    public static UnityAction StateExit;

    public GameObject sectionCam;
    public Animator coinInvAnims;
    public Animator itemInvAnims;

    public  PlayerFPSController controller;

    public static bool sectionActive;
    
    private void Awake()
    {
        Cursor.lockState = CursorLockMode.Locked; //Cursor is locked.
        Cursor.visible = false; //Cursor is hidden.
    }

    private void Update()
    {
        if (sectionActive && Input.GetButtonDown("Cancel"))
        {
            DeactivateSection();
        }
    }
    
    public void ActivateSection(GameObject _sectionCam, bool coinInventory = false, bool itemInventory = false)
    {
        if (sectionActive) return;
        
        if(sectionCam)
            DeactivateSection(false);

        sectionCam = _sectionCam;
        if(sectionCam)
            sectionCam.SetActive(true);
        controller.hasControl = false;
        
        Cursor.lockState = CursorLockMode.None; //Cursor is locked.
        Cursor.visible = true; //Cursor is hidden.
        sectionActive = true;
        StateEnter?.Invoke();

        if (coinInventory)
        {
            coinInvAnims.SetBool("show", true);
        }

        if (itemInventory)
        {
            itemInvAnims.SetBool("show", true);
        }
    }

    public void DeactivateSection(bool regainControl = true)
    {
        if(sectionCam)
            sectionCam.SetActive(false);
        sectionCam = null;
        controller.hasControl = regainControl;
        if (regainControl)
        {
            Cursor.lockState = CursorLockMode.Locked; //Cursor is locked.
            Cursor.visible = false; //Cursor is hidden.
            sectionActive = false;
            StateExit?.Invoke();
        }
        
        coinInvAnims.SetBool("show", false);
        itemInvAnims.SetBool("show", false);
    }
}
