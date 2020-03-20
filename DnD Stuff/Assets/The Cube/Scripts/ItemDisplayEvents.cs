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
        Gizmos.color = Color.green;
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
            
            var comp = obj as Component;
            if (comp != null)
            {
                location = comp.transform.position;
            }
            else
            {
                var go = obj as GameObject;
                if (go)
                {
                    location = go.transform.position;
                }
            }

            Gizmos.DrawLine(origin.position, location);
        }
    }
}