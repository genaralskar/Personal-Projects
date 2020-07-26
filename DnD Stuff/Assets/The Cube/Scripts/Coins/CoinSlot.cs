using UnityEngine;

public class CoinSlot : MonoBehaviour
{
    public Coin coin;

    private CoinInventory coinInv;

    private void Awake()
    {
        coinInv = FindObjectOfType<CoinInventory>();
    }

    public void SetCoin()
    {
        //Debug.Log($"Selected coin = {coinInv.selectedCoin}");
        coin = coinInv.selectedCoin;
    }
}
