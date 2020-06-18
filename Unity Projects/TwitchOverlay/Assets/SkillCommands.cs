using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SkillCommands : MonoBehaviour
{
    private void Awake()
    {
        FindObjectOfType<TwitchChatCommands>().Skill.AddListener(OnSkill);
    }

    private void OnSkill(ChatMessage m)
    {
        if (m.splitMessage.Length <= 1)
        {

            return;
        }

        switch(m.splitMessage[1])
        {
            case "woodcutting":
                SkillChecks(Skill.SkillType.Woodcutting, m);
                break;
            case "mining":
                break;
        }
    }

    private void SkillChecks(Skill.SkillType skill, ChatMessage m)
    {
        PlayerController player = PlayerManager.GetOrAddPlayerToScene(m.name);
        Skill playerSkill = player.player.GetSkillByType(skill);
        int splitMessageLength = m.splitMessage.Length;
        if (splitMessageLength <= 2) return; //no extras on the message
        switch(m.splitMessage[2])
        {
            case "checkLevel":
                int level = playerSkill.Level;
                player.SetChatMessage($"My {skill} level is {level}");
                break;
            case "checkExp":
                int exp = playerSkill.CurrentExp;
                int nextExp = playerSkill.ExpToNextLevel;
                player.SetChatMessage($"I have {exp} exp in {skill}! I need {nextExp} exp to level up!");
                break;
            case "addExp":
                if (splitMessageLength < 3) return;
                int expToAdd = 0;
                int.TryParse(m.splitMessage[3], out expToAdd);
                playerSkill.AddExp(expToAdd);
                player.SetChatMessage($"Added {expToAdd} {skill} exp! Thanks Boss!");
                break;
        }
    }
}
