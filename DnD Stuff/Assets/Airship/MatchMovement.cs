using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MatchMovement : MonoBehaviour
{
    private AirshipController c;

    public Transform toMatch;

    private void Awake()
    {
        c = FindObjectOfType<AirshipController>();
    }

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 move = new Vector3(c.speedX, 0, c.speedZ);
        if(Mathf.Abs(transform.position.y - c.speedY) > .1f)
        {
            if (transform.position.y < c.speedY)
            {
                move.y = 10f;
            }
            else
            {
                move.y -= 10f;
            }
        }

        transform.Translate(move * Time.deltaTime);
    }
}
