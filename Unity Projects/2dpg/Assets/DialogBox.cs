using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class DialogBox : MonoBehaviour
{
    public TextMeshProUGUI nameText;
    public TextMeshProUGUI dialogText;
    public Image imageRight;
    public Image imageLeft;
    public GameObject continueButton;
    
    public void UpdateBox(DialogInfo info)
    {
        //Enable/disable character images
        Sprite di = info.character.displayImage;
        if (di)
        {
            if (info.character.isPlayer)
            {
                imageRight.gameObject.SetActive(true);
                imageRight.sprite = di;
                
                imageLeft.gameObject.SetActive(false);
            }
            else
            {
                imageLeft.gameObject.SetActive(true);
                imageLeft.sprite = di;
                
                imageRight.gameObject.SetActive(false);
            }
        }
        else
        {
            imageRight.gameObject.SetActive(false);
            imageLeft.gameObject.SetActive(false);
        }
        
        //set dialog text and name
        dialogText.text = info.dialog;
        nameText.text = info.character.displayName;
        
        EventSystem.current.SetSelectedGameObject(continueButton);
    }

    public void SelectOption(int value)
    {
        DialogManager.DialogOptionInput(value);
    }
}
