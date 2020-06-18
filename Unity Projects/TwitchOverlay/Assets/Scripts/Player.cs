using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[System.Serializable]
public class Player
{
    public UnityAction<Skill.SkillType, int> LevelUpEvent;

    public string name;
    public Sprite sprite;
    public int gold = 0;
    public List<Skill> skills = new List<Skill>();

    public Player(string name)
    {
        this.name = name;
        skills = new List<Skill>();
    }

    public void AddGold(int amount)
    {
        gold += amount;
    }

    public void AddExp(Skill.SkillType type, int amount)
    {
        //check if player has this skill


        GetSkillByType(type).AddExp(amount);
    }

    public Skill GetSkillByType(Skill.SkillType type)
    {
        foreach (var skill in skills)
        {
            if (skill.type == type) return skill;
        }

        //player does not have that skill, add it
        return AddSkill(type);
    }

    private Skill AddSkill(Skill.SkillType type)
    {
        Skill newSkill = new Skill(type);
        skills.Add(newSkill);
        newSkill.LevelUp = LevelUpHandler;
        return newSkill;
    }

    private void LevelUpHandler(Skill.SkillType skill, int level)
    {
        LevelUpEvent?.Invoke(skill, level);
    }

    public void AssignLevelUpHandler()
    {
        foreach(var skill in skills)
        {
            skill.LevelUp = LevelUpHandler;
            Debug.Log("Skill assigned");
        }
    }
}