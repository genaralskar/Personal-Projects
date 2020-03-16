using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class ClickClunker : MonoBehaviour
{
    public TextMeshProUGUI text;

    public bool debugStuff;
    public TextMeshProUGUI binaryText;
    public TextMeshProUGUI outputNumText;

    public Toggle t0;
    public Toggle t1;
    public Toggle t2;
    public Toggle t3;

    private void Awake()
    {
        if (!debugStuff)
        {
            binaryText.gameObject.SetActive(false);
            outputNumText.gameObject.SetActive(false);
        }
        
        ClickClunk(true);
    }
    
    public void ClickClunk(bool value)
    {
        string binary = $"{b2s(t3.isOn)}{b2s(t2.isOn)}{b2s(t1.isOn)}{b2s(t0.isOn)}";

        int num = System.Convert.ToInt32(binary, 2);

        text.text = num % 3 == 0 ? "Clunk" : "Click";

        if (debugStuff)
        {
            binaryText.text = binary;
            outputNumText.text = num.ToString();
        }
    }

    public string b2s(bool value)
    {
        string s = value ? "1" : "0";
        return s;
    }
}
