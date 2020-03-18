using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoinAnimation : MonoBehaviour
{
    public Animator anims;

    public void InsertCoin(Vector3 position, Quaternion rotation, Coin coin)
    {
        transform.position = position;
        transform.rotation = rotation;
        ChooseCoin(coin);
        anims.SetTrigger("Insert");
    }

    public void InsertCoin(CoinSlot coinSlot)
    {
        InsertCoin(coinSlot.transform.position, coinSlot.transform.rotation, coinSlot.coin);
    }
        
    public List<GameObject> coinModels;
    public Coin cTri, cSq, cPen, cHex, cOct;

    private void ChooseCoin(Coin coin)
    {
        
        if (coin == cTri)
        {
            ActivateModel(0);
            return;
        }

        if (coin == cSq)
        {
            ActivateModel(1);
            return;
        }

        if (coin == cPen)
        {
            ActivateModel(2);
            return;
        }

        if (coin == cHex)
        {
            ActivateModel(3);
            return;
        }

        if (coin == cOct)
        {
            ActivateModel(4);
            return;
        }
        
        ActivateModel(-1);
        
    }

    private void ActivateModel(int i)
    {
        foreach (var coinModel in coinModels)
        {
            coinModel.SetActive(false);
        }
        
        if(i >= 0)
            coinModels[i].SetActive(true);
    }
    
}
