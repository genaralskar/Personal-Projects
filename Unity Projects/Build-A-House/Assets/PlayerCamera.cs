using System.Collections;
using System.Collections.Generic;
using Cinemachine;
using UnityEngine;
using UnityEngine.EventSystems;

public class PlayerCamera : MonoBehaviour
{

    public CinemachineVirtualCamera cam;

    public float moveSpeed = 5f;
    public float zoomSpeed = 10f;

    public Vector2 minMaxAngle = new Vector2(1, 15);
    public Vector2 minMaxZoom = new Vector2(1, 15);

    private CinemachineOrbitalTransposer transposer;
    
    private void Awake()
    {
        transposer = cam.GetCinemachineComponent<CinemachineOrbitalTransposer>();
    }

    // Update is called once per frame
    void Update()
    {
        if (EventSystem.current.IsPointerOverGameObject(-1)) return;
        
        Vector3 newAngle = transposer.m_FollowOffset;
        newAngle.y += Input.GetAxis("Vertical") * moveSpeed * Time.deltaTime;
        newAngle.y = Mathf.Clamp(newAngle.y, minMaxAngle.x, minMaxAngle.y);

        newAngle.z += -Input.mouseScrollDelta.y * zoomSpeed * Time.deltaTime;
        newAngle.z = Mathf.Clamp(newAngle.z, minMaxZoom.x, minMaxZoom.y);

        transposer.m_FollowOffset = newAngle;
    }
}
