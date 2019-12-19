using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public class PropPlacer : MonoBehaviour
{
    public GameObject prefab;
    public Transform parent;

    // Update is called once per frame
    void Update()
    {
        if (!Selection.Contains(gameObject)) return;
        
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;
        if (Physics.Raycast(ray, out hit))
        {
            if (!parent)
            {
                GameObject newParent = new GameObject("Prop Parent");
                parent = newParent.transform;
            }

            GameObject newObj = Instantiate(prefab, parent);
            newObj.transform.position = hit.point;
        }
    }
}
