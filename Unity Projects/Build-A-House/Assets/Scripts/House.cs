using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class House : MonoBehaviour
{
    public int currentHouse = 0;
    public List<GameObject> houses;
    public List<Upgrade> upgrades;

    public UnityAction<Upgrade> NewHouseUpgrade;

    public void UpgradeHouse()
    {
        if (upgrades[currentHouse + 1].CanBuild())
        {
            //remove resources
            foreach (var item in upgrades[currentHouse + 1].costs)
            {
                Inventory.RemoveItem(item.item, item.amount);
            }
            
            //change active gameobject
            houses[currentHouse].SetActive(false);
            currentHouse++;
            houses[currentHouse].SetActive(true);
            NewHouseUpgrade?.Invoke(upgrades[currentHouse + 1]);
        }
    }

    
    
}