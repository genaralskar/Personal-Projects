using System.Collections;
using System.Collections.Generic;
using genaralskar.FPSInteract;
using UnityEngine;

public class ItemDisplayActivator : MonoBehaviour, IFPSInteract
{
    private ItemDisplay pi;
    
    public bool fpsInteract = true;
    public bool mouseClick = true;

    private void Awake()
    {
        pi = transform.root.GetComponent<ItemDisplay>();
    }
    
    public void OnInteract(GameObject playerCamera, RaycastHit hit)
    {
        if (!CubeStateManager.sectionActive && fpsInteract)
        {
            pi.SwapLogic();
            Debug.Log("rayCast!");
        }
            
    }

    private void OnMouseDown()
    {
        if(CubeStateManager.sectionActive && mouseClick)
            pi.SwapLogic();
    }
}
