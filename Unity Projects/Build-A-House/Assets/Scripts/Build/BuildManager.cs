using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using UnityEngine.EventSystems;

public class BuildManager : MonoBehaviour
{
    public GameObject building;
    public Buildable buildable;
    public GameObject buildCam;
    public LayerMask layerMask;

    public static bool isBuilding;

    private void Start()
    {
        //StartBuilding(building);
    }

    public void StartBuilding(GameObject newBuilding)
    {
        if (newBuilding == null) return;

        building = Instantiate(newBuilding);
        buildable = building.GetComponent<Buildable>();
        isBuilding = true;

        StartCoroutine(PlaceBuilding());
    }

    private IEnumerator PlaceBuilding()
    {  
        buildCam.SetActive(true);
        buildable.StartBuilding();
        while (isBuilding)
        {

            if (EventSystem.current.IsPointerOverGameObject(-1)) continue;

            if (Input.GetMouseButton(1))
            {
                Destroy(building);
                break;
            }


            //raycast
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;
            if (Physics.Raycast(ray, out hit, Mathf.Infinity, layerMask))
            {
                building.transform.position = hit.point;
            }

            if (Input.GetMouseButton(0))
            {
                buildable.PlaceBuilding();
                building = null;
                buildable = null;
                break;
            }

            yield return null;
        }

        isBuilding = false;
        buildCam.SetActive(false);
    }
}
