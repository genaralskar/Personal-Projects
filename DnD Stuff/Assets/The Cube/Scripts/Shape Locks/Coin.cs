using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[CreateAssetMenu(menuName = "New Coin")]
public class Coin : ScriptableObject
{
    public int value;
    public Sprite image;
}
