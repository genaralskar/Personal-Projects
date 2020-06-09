public class Skill
{
    public string skillName;
    public int currentTotalExp = 0;
    private int expForLevelUp = 100;
    public int Level => GetLevel();
    public int ExpToNextLevel => expForLevelUp - currentTotalExp;

    private int GetLevel()
    {
        int startExp = 100;
        int level = 1;
        while (currentTotalExp > startExp)
        {
            level++;
            startExp = startExp + startExp + (int)(startExp * .1f);
        }

        return level;
    }
}