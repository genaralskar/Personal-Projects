using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class Player
{
    public string name;
    public Sprite sprite;
    public int gold = 0;
    public List<Skill> skills;

    public Player(string name)
    {
        this.name = name;
    }

    public void AddGold(int amount)
    {
        gold += amount;
    }
}