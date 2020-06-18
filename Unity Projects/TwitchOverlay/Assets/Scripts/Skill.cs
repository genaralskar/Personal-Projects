using UnityEngine.Events;

[System.Serializable]
public class Skill
{
    public UnityAction<SkillType, int> LevelUp;

    public enum SkillType { Woodcutting, Mining }
    public SkillType type;
    public string skillName;

    public int currentTotalExp = 0;
    public int expForLevelUp = 10;

    public int CurrentExp => currentTotalExp;
    public int Level => GetLevel();
    public int ExpToNextLevel => expForLevelUp - currentTotalExp;

    public Skill(SkillType skill)
    {
        this.type = skill;
        this.currentTotalExp = 0;
        this.expForLevelUp = 10;
    }

    private int GetLevel()
    {
        int startExp = expForLevelUp;
        int level = 1;
        while (currentTotalExp > startExp)
        {
            level++;
            startExp = GetExpForNextLevel(startExp);
        }

        return level;
    }

    public void AddExp(int amount)
    {
        currentTotalExp += amount;
        CheckLevel();
    }

    private void CheckLevel()
    {
        if(currentTotalExp >= expForLevelUp)
        {
            expForLevelUp = GetExpForNextLevel(expForLevelUp);
            LevelUp?.Invoke(type, Level);
        }
    }

    private int GetExpForNextLevel(int previousExp)
    {
        int exp = previousExp + previousExp + (int)(previousExp * .1f);
        return exp;
    }
}