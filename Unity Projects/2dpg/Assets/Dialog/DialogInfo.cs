using System.Collections.Generic;

public struct DialogInfo
{
    public DialogCharacter character;
    public string dialog;
    public int positionIndex;
    public bool options;
    public int numOptions;
    public string optionText0;
    public string optionText1;
    public string optionText2;
    public string optionText3;
    public string optionText4;

    public DialogInfo(DialogCharacter character, string dialog, int positionIndex, bool options = false, int numOptions = 0, string optionText0 = "", string optionText1 = "", string optionText2 = "", string optionText3 = "", string optionText4 = "")
    {
        this.character = character;
        this.dialog = dialog;
        this.positionIndex = positionIndex;
        this.options = options;
        this.numOptions = numOptions;
        this.optionText0 = optionText0;
        this.optionText1 = optionText1;
        this.optionText2 = optionText2;
        this.optionText3 = optionText3;
        this.optionText4 = optionText4;
    }

}
