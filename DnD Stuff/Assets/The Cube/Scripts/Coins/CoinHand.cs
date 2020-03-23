using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoinHand : MonoBehaviour
{
    [Header("Coins")]
    public CoinInventory coinInv;
    public List<GameObject> coinModels;
    public Coin cTri, cSq, cPen, cHex, cOct;

    [Header("Items")]
    public ItemInventory itemInv;
    public Item currentItem;
    public Animator handAnims;
    public Transform itemSpot;

    private void Awake()
    {
        coinInv.CoinSelected += CoinSelectedHandler;
        itemInv.NewItemSelected += NewItemSelectedHandler;

        CubeStateManager.StateEnter += StateEnterHandler;
        CubeStateManager.StateExit += StateExitHandler;
    }

    private void Update()
    {
        if (Input.GetMouseButtonDown(1))
        {
            RemoveCurrentCoin();
            RemoveCurrentItem();
        }
    }

    public void RemoveCurrentItem()
    {
        itemInv.ReturnCurrentItem();
        currentItem = null;
    }

    public void RemoveCurrentCoin()
    {
        coinInv.ReturnSelectedCoin();
    }

    private void CoinSelectedHandler(Coin coin)
    {
        if(currentItem)
            RemoveCurrentItem();
        
        if (coin == cTri)
        {
            ActivateCoinModel(0);
            return;
        }

        if (coin == cSq)
        {
            ActivateCoinModel(1);
            return;
        }

        if (coin == cPen)
        {
            ActivateCoinModel(2);
            return;
        }

        if (coin == cHex)
        {
            ActivateCoinModel(3);
            return;
        }

        if (coin == cOct)
        {
            ActivateCoinModel(4);
            return;
        }
        
        ActivateCoinModel(-1);
        
    }

    private void ActivateCoinModel(int i)
    {
        foreach (var coinModel in coinModels)
        {
            coinModel.SetActive(false);
        }
        
        if(i >= 0)
            coinModels[i].SetActive(true);
    }
    
    //===Items===
    private void NewItemSelectedHandler()
    {
        //remove coin if its there
        RemoveCurrentCoin();
        currentItem = itemInv.currentItem;
        GameObject go = itemInv.GetCurrentItemGO();
        
        Debug.Log(itemInv.currentItem);
        
        go.transform.SetParent(itemSpot);
        go.transform.localRotation = Quaternion.identity;
        go.transform.localPosition = Vector3.zero;
        
        go.SetActive(true);
    }

    private void StateEnterHandler(bool useHands)
    {
        if(useHands)
            handAnims.SetBool("HandUp", true);
    }

    private void StateExitHandler()
    {
        if(handAnims.GetBool("HandUp"))
            handAnims.SetBool("HandUp", false);
    }
    
}
