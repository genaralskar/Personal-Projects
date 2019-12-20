using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Crafter : ClickableObjectBase
{
    [Header("Crafter stuff")]
    public List<CraftableItem> items;

    public CraftingWindowUI craftingWindow;

    public AnimationClip craftingAnim;

    public override void OnPlayerInRange()
    {
        base.OnPlayerInRange();
        craftingWindow.gameObject.SetActive(true);
        craftingWindow.OpenCraftingWindow(items, this);
    }

    protected override void OnPlayerLeave()
    {
        craftingWindow.CloseWindow();
    }

    public void StartCrafting(CraftableItem itemToCraft, int amountToCraft)
    {
        StopAllCoroutines();
        StartCoroutine(Craft(itemToCraft, amountToCraft));
    }

    private IEnumerator Craft(CraftableItem itemToCraft, int amountToCraft)
    {
        float timer = 0;
        int counter = 0;
        player.AnimIdle(false);
        player.AnimUtil(craftingAnim);
        while (counter < amountToCraft)
        {
            timer += Time.deltaTime;
            if (timer > itemToCraft.craftTime)
            {
                counter++;
                timer = 0;
                //add item
                Inventory.BuyItem(itemToCraft.reqMats, 1, itemToCraft, itemToCraft.numberOfItemsPerCraft);
            }
            yield return null;
        }
        CraftingFinish();
    }

    private void CraftingFinish()
    {
        StopMovingPlayer();
        Debug.Log("Crafting Finished");
    }
}
