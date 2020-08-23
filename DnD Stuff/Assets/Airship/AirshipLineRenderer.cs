using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(LineRenderer))]
public class AirshipLineRenderer : MonoBehaviour
{
    private LineRenderer template;

    [SerializeField]
    private List<GameObject> balloonPoints = new List<GameObject>();
    [SerializeField]
    private List<GameObject> basePoints = new List<GameObject>();

    private List<LineRenderer> balloonLineRend = new List<LineRenderer>();
    private List<LineRenderer> baseLineRend = new List<LineRenderer>();

    private Vector3[] points = new Vector3[2];

    private void Awake()
    {
        template = GetComponent<LineRenderer>();

        PopulateRenderers();
    }

    private LineRenderer AddLineRenderer(GameObject obj)
    {
        LineRenderer r = obj.AddComponent<LineRenderer>();

        r.loop = template.loop;
        r.widthCurve = template.widthCurve;
        r.widthMultiplier = template.widthMultiplier;
        r.colorGradient = template.colorGradient;
        r.numCornerVertices = template.numCornerVertices;
        r.numCapVertices = template.numCapVertices;
        r.alignment = template.alignment;
        r.textureMode = template.textureMode;
        r.shadowBias = template.shadowBias;
        r.generateLightingData = template.generateLightingData;
        r.useWorldSpace = template.useWorldSpace;
        r.materials = template.materials;

        return r;
    }

    private void PopulateRenderers()
    {
        foreach(var p in balloonPoints)
        {
            
            balloonLineRend.Add(AddLineRenderer(p));
        }


    }

    private void UpdateRends()
    {
        for(int i = 0; i < balloonLineRend.Count; i++)
        {
            points[0] = balloonPoints[i].transform.position;
            points[1] = basePoints[i].transform.position;
            balloonLineRend[i].SetPositions(points);
        }
    }

    // Update is called once per frame
    void Update()
    {
        UpdateRends();
    }
}
