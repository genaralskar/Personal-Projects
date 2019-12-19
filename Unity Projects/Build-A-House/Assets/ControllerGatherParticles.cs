using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ControllerGatherParticles : MonoBehaviour
{
    public List<ParticleType> particles;
    public Controller controller;

    private void Awake()
    {
        if (controller == null)
        {
            controller = GetComponent<Controller>();
        }

        controller.ItemAddedToInventory += ItemAddedToInvHandler;
    }

    private void ItemAddedToInvHandler(InventorySlot newItem)
    {
        SpawnParticles(newItem.item);
    }

    public void SpawnParticles(Item item)
    {
        foreach (var particle in particles)
        {
            if (particle.itemType == item)
            {
                particle.itemParticle.SetActive(true);
                return;
            }
        }
    }
}

[System.Serializable]
public class ParticleType
{
    public Item itemType;
    public GameObject itemParticle;
}
