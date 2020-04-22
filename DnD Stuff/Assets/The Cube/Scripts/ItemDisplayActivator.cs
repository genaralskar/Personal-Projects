using genaralskar.FPSInteract;
using UnityEngine;

public class ItemDisplayActivator : MonoBehaviour, IFPSInteract, IFPSLookAt
{
    public ItemDisplay itemDisplay;
    
    public bool fpsInteract = true;
    public bool mouseClick = true;

    private void Awake()
    {
        //itemDisplay = transform.root.GetComponent<ItemDisplay>();
    }
    
    public void OnInteract(GameObject playerCamera, RaycastHit hit)
    {
        if (!CubeStateManager.sectionActive && fpsInteract)
        {
            itemDisplay.SwapLogic();
        }
            
    }

    private void OnMouseDown()
    {
        if(CubeStateManager.sectionActive && mouseClick)
            itemDisplay.SwapLogic();
    }

    public void OnLook()
    {
        itemDisplay.OnLook();
    }

    public void OnStopLook()
    {
        itemDisplay.OnStopLook();
    }
}
