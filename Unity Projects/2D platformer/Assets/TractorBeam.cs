using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using UnityEngine;
using UnityEngine.XR;
using Debug = UnityEngine.Debug;

public class TractorBeam : MonoBehaviour
{
    public Vector2 tractorPoint;
    public float tractorForce = 5f;
    public GameObject endGameCam;
    public float tractorMoveSpeed = 4f;

    private Transform playerTransform;
    private Rigidbody2D rb;
    private bool tractoring = false;
    private Vector2 tractorPointTarget;
    
    private Vector2 position {get {return new Vector2(transform.position.x, transform.position.y);}}

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (tractoring) return;
        PlayerController controller = other.GetComponent<PlayerController>();
        controller.canMove = false;
        controller.useGravity = false;
        playerTransform = controller.transform;
        rb = controller.gameObject.GetComponent<Rigidbody2D>();

        rb.drag = 1f;
        rb.angularDrag = 1f;

        tractorPointTarget = tractorPoint;
        tractorPoint.y = playerTransform.position.y - position.y;

        StopAllCoroutines();
        StartCoroutine(Tractor());
        StartCoroutine(MoveTractorPoint());
        endGameCam.SetActive(true);
    }


    private IEnumerator Tractor()
    {
        tractoring = true;
        

        while (true)
        {
            Vector2 playerPos = playerTransform.position;
            Vector2 dir = playerPos - (tractorPoint + position);
            Debug.DrawRay(playerPos, -dir);
            //probably normalize this

            float dirMag = dir.magnitude;
            dir = dir.normalized;
            
            rb.AddForce(-dir * tractorForce);
            
            
            
            yield return new WaitForFixedUpdate();
        }
    }

    private IEnumerator MoveTractorPoint()
    {
        while (Mathf.Abs(tractorPoint.y - tractorPointTarget.y) > .1f)
        {
            Debug.Log("moving on up?");
            //move tractor point
            float dirMag = Vector2.Distance(tractorPoint + position, playerTransform.position);
            Debug.Log(dirMag);
            if (dirMag < 2f)
            {
                Debug.Log("Upward movement!");
                tractorPoint.y += tractorMoveSpeed * Time.deltaTime;
            }
            
            yield return new WaitForEndOfFrame();
        }
    }

    private void OnDrawGizmosSelected()
    {
        
        Gizmos.DrawWireSphere(tractorPoint + position, .1f);
    }
}
