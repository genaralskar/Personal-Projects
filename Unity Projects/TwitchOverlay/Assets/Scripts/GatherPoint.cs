using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GatherPoint : MonoBehaviour
{
    [SerializeField]
    private Skill.SkillType skillType;

    private Coroutine gatherC;

    private List<PlayerController> assignedPlayers = new List<PlayerController>();

    private void Start()
    {
        gatherC = StartCoroutine(Gather());
    }

    public void AssignPlayer(PlayerController newPlayer)
    {
        if(!assignedPlayers.Contains(newPlayer))
        {
            assignedPlayers.Add(newPlayer);
        }
        newPlayer.playerMove += RemovePlayer;
    }

    public void RemovePlayer(PlayerController player)
    {
        if(assignedPlayers.Contains(player))
        {
            assignedPlayers.Remove(player);
        }
    }

    public int Gather(int level)
    {
        //return resource based on level

        return 1;
    }

    private IEnumerator Gather()
    {
        WaitForSeconds wait = new WaitForSeconds(1);
        while(true)
        {
            foreach(var player in assignedPlayers)
            {
                //get level of skill, and amount of exp based on level
                int amount = Gather(player.player.GetSkillByType(skillType).Level);
                player.player.AddExp(skillType, amount);
            }
            yield return wait;
        }
        
    }
}