using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CandlePlacer : MonoBehaviour
{
    public float radius = 1f;
    public List<GameObject> candles;
    private int currentCandle = 0;
    
    public float placeInterval = .1f;

    public LayerMask candleLayerMask;

    public float verticalOffset = .6f;
    
    public int poolAmount = 150;
    private Queue<GameObject> pool = new Queue<GameObject>();

    public int placeNum;

    private int crasherStopper = 0;

    private void Awake()
    {
        PopulatePool();
    }
    
    public void StartPlacing()
    {
        StopAllCoroutines();
        ResetCandles();
        StartCoroutine(PlaceCandles(placeNum));
    }
    
    private void Place()
    {
        Vector3 pos = GetValidPos();
        pos.y = verticalOffset;
        
        var go = pool.Dequeue();
        go.SetActive(true);
        go.transform.position = pos;
        
        pool.Enqueue(go);
    }

    private Vector3 GetRandomPos()
    {
        float rx = Random.Range(-1f, 1f);
        float ry = Random.Range(-1f, 1f);
        Vector3 rv = new Vector3(rx, 0, ry);

        if(rv.magnitude > 1)
            rv = rv.normalized;
        rv *= radius;
        
        return rv;
    }

    private Vector3 GetValidPos()
    {
        if (crasherStopper >= 50) return Vector3.zero;
        crasherStopper++;
        
        Vector3 pos = GetRandomPos();
        
        Collider[] cols = Physics.OverlapSphere(pos, .1f);

        if (cols.Length > 0)
        {
            pos = GetValidPos();
        }
        
        crasherStopper = 0;
        return pos;
    }

    private IEnumerator PlaceCandles(int amount)
    {
        WaitForSeconds wait = new WaitForSeconds(placeInterval);
        for (int i = 0; i < amount; i++)
        {
            float timer = Time.time;
            Place();
            yield return wait;
        }
    }

    private void PopulatePool()
    {
        for (int i = 0; i < poolAmount; i++)
        {
            var go = Instantiate(candles[GetCurrentCandle()]);
            pool.Enqueue(go);
            go.SetActive(false);
        }
    }

    private int GetCurrentCandle()
    {
        int i = currentCandle;
        currentCandle += 1;
        currentCandle = currentCandle % candles.Count;
        
        return i;
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position + (Vector3.up * verticalOffset), radius);
    }

    public void ChangePlaceNumber(string num)
    {
        placeNum = int.Parse(num);
    }

    private void ResetCandles()
    {
        for (int i = 0; i < poolAmount; i++)
        {
            var go = pool.Dequeue();
            go.SetActive(false);
            pool.Enqueue(go);
        }
    }
}
