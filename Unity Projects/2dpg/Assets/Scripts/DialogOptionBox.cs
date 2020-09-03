using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class DialogOptionBox : MonoBehaviour
{
    public List<GameObject> optionBoxes;

    public List<TextMeshProUGUI> optionTexts;

    public void UpdateOptions(DialogInfo info)
    {
        //enable proper number of boxes
        int num = info.numOptions;
        int i = 0;
        foreach (var box in optionBoxes)
        {
            bool val = i < num;
            box.SetActive(val);
            i++;
        }
        
        //update their text
        List<string> options = GetOptionsList(info);
        i = 0;
        foreach (var text in optionTexts)
        {
            if (i >= num) break;
            text.text = options[i];
            i++;
        }

        EventSystem.current.SetSelectedGameObject(optionBoxes[0]);
    }
    
    public void ChooseOption(int value)
    {
        DialogManager.DialogOptionInput(value);
    }

    private List<string> GetOptionsList(DialogInfo info)
    {
        List<string> l = new List<string>
        {
            info.optionText0,
            info.optionText1,
            info.optionText2,
            info.optionText3,
            info.optionText4
        };

        return l;
    }
}
