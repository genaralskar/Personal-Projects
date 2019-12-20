using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using UnityEngine.UI;

public class CraftingWindowUI : MonoBehaviour
{
    public GameObject itemsPanel;
    public GameObject craftingPanel;

    public List<GameObject> itemSelectionButtons;
    public List<GameObject> craftingCostPanels;

    public int craftAmount = 1;

    private List<CraftableItem> currentItems;
    private CraftableItem currentItem;
    
    private List<Button> selectionButtons;
    private List<ItemSelectionButtonUI> itemSelectionUIs;
    private List<CostPanelUI> costPanelUI;

    private Crafter currentCrafter;

    private void Awake()
    {
        selectionButtons = new List<Button>();
        foreach (var button in itemSelectionButtons)
        {
            selectionButtons.Add(button.GetComponent<Button>());
        }

        itemSelectionUIs = new List<ItemSelectionButtonUI>();
        foreach (var button in itemSelectionButtons)
        {
            itemSelectionUIs.Add(button.GetComponent<ItemSelectionButtonUI>());
        }

        costPanelUI = new List<CostPanelUI>();
        foreach (var panel in craftingCostPanels)
        {
            costPanelUI.Add(panel.GetComponent<CostPanelUI>());
        }
    }

    //assigns the item selection values when the window pops up
    //how many items, their names, and their icons
    public void OpenCraftingWindow(List<CraftableItem> items, Crafter newCrafter)
    {
        currentCrafter = newCrafter;
        //turn on/off buttons and assing their onclicks
        int itemLen = items.Count;
        for (int i = 0; i < itemSelectionButtons.Count; i++)
        {
            if (i < itemLen)
            {
                itemSelectionButtons[i].SetActive(true);
                AssignButton(i, items[i]);
                continue;
            }
            itemSelectionButtons[i].SetActive(false);
        }

        currentItems = items;
        
        UpdateCraftWindow(items[0]);
    }

    private void AssignButton(int i, Item newItem)
    {
        Button button = selectionButtons[i];
        button.onClick.RemoveAllListeners();

        itemSelectionUIs[i].UpdateUI(newItem);
        
        button.onClick.AddListener(() => UpdateCraftWindow(itemSelectionUIs[i].item));
    }

    //when a button is pressed, it calls this and updates the costs with the proper costs
    public void UpdateCraftWindow(Item item)
    {
        CraftableItem newItem = (CraftableItem) item;
        //Debug.Log($"New item = {newItem}. reqMats = {newItem.reqMats[0]}");
        //enable disable panels
        int costLen = newItem.reqMats.Count;
        for (int i = 0; i < craftingCostPanels.Count; i++)
        {
            if (i < costLen)
            {
                craftingCostPanels[i].SetActive(true);
                costPanelUI[i].UpdatePanel(newItem.reqMats[i], craftAmount);
                continue;
            }
            
            craftingCostPanels[i].SetActive(false);
        }

        currentItem = newItem;
    }

    public void ChangeCraftAmount(float amount)
    {
        craftAmount = (int)amount;
        //Debug.Log($"Current Item {currentItem}");
        UpdateCraftWindow(currentItem);
        
    }

    public void CraftItem()
    {
        currentCrafter.StartCrafting(currentItem, craftAmount);
        CloseWindow();
    }

    public void CloseWindow()
    {
        gameObject.SetActive(false);
    }
}
