using System.Collections;
using System.Collections.Generic;
using genaralskar.FPSInteract;
using UnityEngine;

public class CubeSectionManager : MonoBehaviour, IFPSInteract
{
    public CubeStateManager manager;
    public GameObject cam;
    public bool coinInv;
    public bool itemInv;

    private void Awake()
    {
        manager = FindObjectOfType<CubeStateManager>();
    }
    
    public void OnInteract(GameObject playerCamera, RaycastHit hit)
    {
        manager.ActivateSection(cam, coinInv, itemInv);
    }
}
