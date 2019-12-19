using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public class RaycastObjects : Editor
{
    [MenuItem("Tools/Raycast Objects")]
    static void RaycastObjs()
    {
        GameObject[] s = Selection.gameObjects;

        foreach (var obj in s)
        {
            RaycastHit hit;
            Ray ray = new Ray(obj.transform.position, Vector3.down);

            if (Physics.Raycast(ray, out hit))
            {
                obj.transform.position = hit.point;
            }
        }
    }
}
