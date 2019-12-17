using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.Events;

public class MouseOverText : MonoBehaviour
{
    public Vector3 offset = Vector3.right;
    
    public static UnityAction<ClickableObjectBase> AddObject;
    public static UnityAction<ClickableObjectBase> RemoveObject;

    private TextMeshProUGUI tmp;
    private List<ClickableObjectBase> objs;

    private string blank = "";
    
    private void Awake()
    {
        tmp = GetComponent<TextMeshProUGUI>();

        AddObject = AddObjectHandler;
        RemoveObject = RemoveObjectHandler;

        objs = new List<ClickableObjectBase>();
    }

    private void Update()
    {
        UpdatePosition();
    }
    
    private void AddObjectHandler(ClickableObjectBase obj)
    {
        if (!objs.Contains(obj))
        {
            objs.Add(obj);
            UpdateText();
        }        
    }

    private void RemoveObjectHandler(ClickableObjectBase obj)
    {
        if (objs.Contains(obj))
        {
            objs.Remove(obj);
            UpdateText();
        }
    }

    private void UpdateText()
    {
        if (objs.Count == 0)
        {
            tmp.text = blank;
            return;
        }
        
        tmp.text = objs[0].mouseOverText;
    }

    private void UpdatePosition()
    {
        transform.position = Input.mousePosition + offset;
    }

 
}
