using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(ItemDisplayEvents))]
public class UpdateRotCubeCrystalColor : MonoBehaviour
{
    private ItemDisplayEvents itemDisplayEvents;
    [SerializeField] private GameObject rotCube;

    private void Awake()
    {
        itemDisplayEvents = GetComponent<ItemDisplayEvents>();
    }

    // Start is called before the first frame update
    void Start()
    {
        itemDisplayEvents.ItemActivated.AddListener(UpdateColor);
        itemDisplayEvents.ItemDeactivated.AddListener(UpdateColor);

        UpdateColor();
    }

    public void UpdateColor()
    {
        Crystal.CrystalColor c = Crystal.CrystalColor.White;
        if(itemDisplayEvents.hasCrystal)
        {
            Debug.Log("Has Crystal!");
            Debug.Log($"CrystalColor = {itemDisplayEvents.currentCrystalColor}");
            c = itemDisplayEvents.currentCrystalColor;
        }
        SendColor(c);
    }

    private void SendColor(Crystal.CrystalColor color)
    {
        Renderer r = rotCube.GetComponent<Renderer>();
        r.material.color = GetCrystalColor(color);
    }

    private Color GetCrystalColor(Crystal.CrystalColor c)
    {
        switch(c)
        {
            case Crystal.CrystalColor.Blue:
                return Color.blue;
            case Crystal.CrystalColor.Green:
                return Color.green;
            case Crystal.CrystalColor.Red:
                return Color.red;
            case Crystal.CrystalColor.Yellow:
                return Color.yellow;
            default:
                return Color.white;
        }
    }
}
