using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Dialog/New Character")]
public class DialogCharacter : ScriptableObject
{
    public string displayName;
    public Sprite displayImage;
    public bool isPlayer = false;
}
