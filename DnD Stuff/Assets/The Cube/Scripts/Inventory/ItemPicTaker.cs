using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemPicTaker : MonoBehaviour
{
    public Camera picCam;
    public RenderTexture rtCopy;
    public Transform posSmall;
    public Transform posMed;
    public Transform posLarge;

    private Queue<Item> picsQ = new Queue<Item>();
    private bool working = false;


    public void GetPicture(Item obj)
    {
        picsQ.Enqueue(obj);
        //Debug.Log("item added to queue");
        if (!working)
        {
            StartCoroutine(Picture());
        }
    }

    private IEnumerator Picture()
    {
        working = true;
        while (picsQ.Count > 0)
        {
            Item obj = picsQ.Dequeue();
            
            Transform orig = obj.transform;
            Vector3 origTrans = orig.position;
            Quaternion origRot = orig.rotation;

            Transform objPos = posLarge;
            switch (obj.size)
            {
                case Item.Size.Small:
                    objPos = posSmall;
                    break;
                case Item.Size.Medium:
                    objPos = posMed;
                    break;
            }
            
            //move it
            orig.position = objPos.position;
            //offset by center
            Vector3 center = obj.gameObject.GetComponent<Renderer>().bounds.center;
            orig.position -= center - objPos.position;
            
            orig.transform.rotation = objPos.rotation;

            //make new render texture
            RenderTexture rt = new RenderTexture(rtCopy);
            rt.Create();
            picCam.targetTexture = rt;
            yield return new WaitForEndOfFrame();
            
            //reset
            obj.image = rt;
            picCam.targetTexture = rtCopy;
            orig.position = origTrans;
            orig.transform.rotation = origRot;
        }

        working = false;
    }
}
