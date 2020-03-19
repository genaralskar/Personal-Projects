using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[RequireComponent(typeof(ItemDisplay))]
public class ItemDisplayEvents : MonoBehaviour
{
    public ItemEvent NewItem;
    private ItemDisplay id;
    
    private void Awake()
    {
        id = GetComponent<ItemDisplay>();
    }

    private void Start()
    {
        
    }

    private void OnValidate()
    {
        
    }

    private void OnDrawGizmosSelected()
    {
        Draw(NewItem, transform);
    }

    [System.Serializable]
    public class ItemEvent : UnityEvent<Item>
    {
        
    }

    private void Draw(UnityEvent<Item> e, Transform origin)
    {
        int c = e.GetPersistentEventCount();
        Vector3 location = origin.position;
        for (int i = 0; i < c; i++)
        {
            var obj = e.GetPersistentTarget(i);
            if (obj == null) continue;
            MonoBehaviour mb = obj as MonoBehaviour;
            if (mb == null)
            {
                GameObject go = GameObject.Find(e.GetPersistentTarget(i).name);
                if (go)
                {
                    Gizmos.color = Color.red;
                    location = go.transform.position;
                }
            }
            else
            {
                Gizmos.color = Color.green;
                location = mb.transform.position;
            }
            
            Gizmos.DrawLine(origin.position, location);
        }
    }
}