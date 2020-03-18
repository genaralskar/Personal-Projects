using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OpenInventories : MonoBehaviour
{

    public Animator coinUIAnims;
    public Animator itemUIAnims;

    public CubeStateManager manager;
    
    private void Update()
    {
        if (!CubeStateManager.sectionActive && Input.GetButtonDown("OpenInv"))
        {
            manager.ActivateSection(null, true, true);
        }
    }
}
