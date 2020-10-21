using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Pathfinding;

[RequireComponent(typeof(Rigidbody2D))]
[RequireComponent(typeof(Seeker))]
[RequireComponent(typeof(Actor))]
[RequireComponent(typeof(ActorMove))]
public class ActorMoveAI : MonoBehaviour
{
    private Actor actor;
    private ActorMove actorMove;

    public Transform target;
    public float speed;
    [SerializeField]
    private float nextWaypointDistance = .1f;

    [SerializeField]
    private float updateRate = .5f;
    private Path path;
    private int currentWaypoint = 0;
    private Seeker seeker;
    private Rigidbody2D rb;

    private void Awake()
    {
        actorMove = GetComponent<ActorMove>();
        actor = GetComponent<Actor>();
        seeker = GetComponent<Seeker>();
        rb = GetComponent<Rigidbody2D>();
    }

    private void Start()
    {
        UpdatePath();
        StartCoroutine(Move());
        StartCoroutine(UpdatePathLoop());
    }

    private void UpdatePath()
    {
        if(path != null)
        {
            //Debug.Log("Distance " + Vector2.Distance(transform.position, target.position));
            if (Vector2.Distance(transform.position, target.position) <= nextWaypointDistance) return;
        }
        seeker.StartPath(rb.position, target.position, OnPathComplete);
    }

    private void OnPathComplete(Path p)
    {
        if(!p.error)
        {
            path = p;
            currentWaypoint = 1;
        }
    }

    private IEnumerator Move()
    {
        WaitForEndOfFrame wait = new WaitForEndOfFrame();
        //get direction from current location to next waypoint
        while(true)
        {
            yield return wait;
            if (path == null) continue;
            float toLastWaypointDistance = Vector2.Distance(transform.position, path.vectorPath[path.vectorPath.Count -1]);
            if (currentWaypoint >= path.vectorPath.Count || toLastWaypointDistance <= nextWaypointDistance)
            {
                //reached end of path
                actorMove.SetMoveDirection(Vector2.zero);
                continue;
            }
            Vector2 direction = path.vectorPath[currentWaypoint] - transform.position;
            float toNextWaypoint = Vector2.Distance(transform.position, path.vectorPath[currentWaypoint]);
            if (toNextWaypoint < .05f) currentWaypoint++;
            direction = direction.normalized;
            actorMove.SetMoveDirection(direction);
        }
    }

    private IEnumerator UpdatePathLoop()
    {
        WaitForSeconds wait = new WaitForSeconds(updateRate);
        while(true)
        {

            yield return wait;
            UpdatePath();
        }
    }
}
