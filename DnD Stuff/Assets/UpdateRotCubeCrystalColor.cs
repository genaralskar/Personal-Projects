using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UpdateRotCubeCrystalColor : MonoBehaviour
{
    private ItemDisplay itemDisplay;
    [SerializeField] private GameObject rotCube;

    private void Awake()
    {
        itemDisplay = GetComponent<ItemDisplay>();
        itemDisplay.ItemPlaced += UpdateColor;
        itemDisplay.ItemRemoved += DefaultColor;
    }

    // Start is called before the first frame update
    void Start()
    {
         //UpdateColor(Crystal.CrystalColor.White);
    }

    public void UpdateColor(Item item)
    {
        //set a default color
        Crystal.CrystalColor col = Crystal.CrystalColor.White;

        //check if placed item is a crystal
        Crystal c = item as Crystal;
        if (!c)
        {
            //if its not, send the default white color to the cube, then return
            SendColor(col);
            return;
        }

        //if it is a crystal, set the color to that crystals color
        col = c.color;
        SendColor(col);
    }

    public void UpdateColor(Crystal.CrystalColor color)
    {
        SendColor(color);
    }

    public void DefaultColor(Item item)
    {
        SendColor(Crystal.CrystalColor.White);
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
            case Crystal.CrystalColor.Blue1:
                return Color.blue;
            case Crystal.CrystalColor.Blue2:
                return Color.blue;
            case Crystal.CrystalColor.Green1:
                return Color.green;
            case Crystal.CrystalColor.Green2:
                return Color.green;
            case Crystal.CrystalColor.Red1:
                return Color.red;
            case Crystal.CrystalColor.Red2:
                return Color.red;
            case Crystal.CrystalColor.Red3:
                return Color.red;
            case Crystal.CrystalColor.Yellow:
                return Color.yellow;
            default:
                return Color.white;
        }
    }
}
