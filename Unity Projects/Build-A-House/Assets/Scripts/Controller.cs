using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Events;
using UnityEngine.EventSystems;

[RequireComponent(typeof(NavMeshAgent))]
public class Controller : MonoBehaviour
{

    private NavMeshAgent agent;
    private Animator anims;

    public float runSpeed = 5f;

    public UnityAction PlayerMoving;
    
    public enum PlayerAnim
    {
        Move, Mine, Woodcut, Fish, Gather
    }

    public bool player = false;

    public bool gathering = false;

    public Item gatherType;

    public List<InventorySlot> items;
    public int maxWeight = 10;
    public int weight;

    private void Awake()
    {
        agent = GetComponent<NavMeshAgent>();
        anims = GetComponentInChildren<Animator>();
    }

    // Start is called before the first frame update
    void Start()
    {

    }

    public void FindNearestResource()
    {
        //gathering = true;
        //Debug.Log("Gathering True!");
        GatherPoint[] points = FindObjectsOfType<GatherPoint>();
        GatherPoint closestPoint = null;
        float distance = -1f;
        foreach (var point in points)
        {
            float des = Vector3.Distance(transform.position, point.transform.position);
            if (des < distance || distance < 0)
            {
                if(point.Active || !point.Full)
                    continue;
                
                if(gatherType != null & point.item != gatherType)
                    continue;
                
                closestPoint = point;
                distance = des;
                //Debug.Log($"Update closest point to {closestPoint} with a distance of {distance}");
            }
        }
        //Debug.Log($"closest point full: {closestPoint.Full}, active: {closestPoint.Active}");
        if (closestPoint == null) return;
        closestPoint.OnClicked(this);
        gathering = true;
        //Debug.Log($"{gameObject} going to {closestPoint}", this);
    }
    
    // Update is called once per frame
    void Update()
    {   
        //if (!EventSystem.current.IsPointerOverGameObject(-1) && Input.GetMouseButtonDown(0))
        if (Input.GetMouseButtonDown(0) && !EventSystem.current.IsPointerOverGameObject(-1) && player)
        {
            MovePlayer();
        }
        UpdateAnimation();
    }

    public void DepositMats()
    {
        gathering = true;
        Depot[] depots = FindObjectsOfType<Depot>();
        Depot closestPoint = null;
        float distance = -1f;
        foreach (var depot in depots)
        {
            float des = Vector3.Distance(transform.position, depot.transform.position);
            if (des < distance || distance < 0)
            {
                closestPoint = depot;
                distance = des;
                //Debug.Log($"Update closest point to {closestPoint} with a distance of {distance}");
            }
        }

        if (closestPoint == null) return;
        closestPoint.OnClicked(this);
    }

    public void AddItem(Item newItem, int amount)
    {
        foreach (var item in items)
        {
            if (item.item == newItem)
            {
                item.amount += amount;
                weight += item.item.weight * amount;
                if (weight > maxWeight)
                {
                    DepositMats();
                }
                return;
            }
        }
        
        items.Add(new InventorySlot(newItem, amount));
        weight += newItem.weight * amount;
        if (weight > maxWeight)
        {
            DepositMats();
        }
        return;
    }

    public void ClearItems()
    {
        items = new List<InventorySlot>();
        weight = 0;
        gathering = false;
    }

    private void MovePlayer()
    {
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;
        if (Physics.Raycast(ray, out hit))
        {
            //if no interactable object is hit
            IClickableObject CO = hit.collider.GetComponent<IClickableObject>();
            if (CO == null)
            {
                PlayerMoving?.Invoke();
                agent.stoppingDistance = 0;
                agent.SetDestination(hit.point);    
            }
            else
            {
                //move player into position
                ClickableObjectBase COBase = hit.collider.GetComponent<ClickableObjectBase>();
                CO.OnClicked(this);
            }
        }
    }

    private void UpdateAnimation()
    {
        float movementPercent = agent.velocity.magnitude / runSpeed;
        anims.SetFloat("Speed", movementPercent);
    }

    public void AnimSetBool(string name, bool value)
    {
        anims.SetBool(name, value);
        anims.SetTrigger("GatherUpdate");
    }

    public void AnimsSetTrigger(string name)
    {
        anims.SetTrigger(name);
    }

    public void AnimIdle(bool value)
    {
        //anims.SetTrigger("Move");
        anims.SetBool("Move", value);
        //Debug.Log($"{gameObject} Idling {value}");
        if (value)
        {
            gathering = false;
        }
            
    }

    public void SetDestination(Vector3 newDest, float stoppingDistance = 0)
    {
        agent.SetDestination(newDest);
        agent.stoppingDistance = stoppingDistance;
        PlayerMoving?.Invoke();
    }

    public void StopPlayer()
    {
        agent.isStopped = true;
    }
}
