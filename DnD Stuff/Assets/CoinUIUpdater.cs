using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoinUIUpdater : MonoBehaviour
{
    public CoinInventory inv;

    public List<Coin> coinTypes;

    public List<CoinUISlot> coinSlots;

    private void Awake()
    {
        inv.InventoryUpdated += UpdateSlots;
        
        for (int i = 0; i < coinSlots.Count; i++)
        {
            //if there are most slots than coin types
            if (i >= coinTypes.Count)
            {
                coinSlots[i].gameObject.SetActive(false);
                continue;
            }

            Debug.Log(coinSlots[i]);
            coinSlots[i].coin = coinTypes[i];
            var i1 = i;
            coinSlots[i].button.onClick.AddListener(delegate { inv.SelectCoin(coinSlots[i1].coin); });
        }
        
        inv.InventoryUpdated?.Invoke();
    }

    public void UpdateSlots()
    {
        foreach (var slot in coinSlots)
        {
            int newAmount = inv.GetCoinAmount(slot.coin);
            if (newAmount < 0)
            {
                slot.gameObject.SetActive(false);
            }
            else
            {
                slot.gameObject.SetActive(true);
                slot.UpdateUISlot(inv.GetCoinAmount(slot.coin));
            }
        }
    }
}
