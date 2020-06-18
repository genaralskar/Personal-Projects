using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

public class PlayerManager : MonoBehaviour
{
    /// <summary>
    /// A Dictionary that holds all players information
    /// </summary>
    #region Player Database, Saving/Loading

    public static PlayerDatabase players = new PlayerDatabase();

    public static Player GetOrAddPlayer(string name)
    {
        Player player;
        bool i = players.TryGetValue(name, out player);
        //add new player if not in database
        if(!i)
        {
            player = new Player(name);
            players.Add(name, new Player(name));
        }

        return player;
    }

    public static void RemovePlayer(Player player)
    {
        players.Remove(player);
    }

    public static void Save()
    {
        string jsonSave = JsonUtility.ToJson(players);
        File.WriteAllText(Application.dataPath + "/save.txt", jsonSave);

        //purge bots

        Debug.Log("Save: " + jsonSave);
    }

    public static void Load()
    {
        if (File.Exists(Application.dataPath + "/save.txt"))
        {
            string saveString = File.ReadAllText(Application.dataPath + "/save.txt");
            PlayerDatabase pd = JsonUtility.FromJson<PlayerDatabase>(saveString);
            players = pd;

            Debug.Log("Load: " + saveString);

            //Update Active Players
            UpdateActiveGOs();
        }
    }

    //This will remove any players from the game that aren't in the Player list.
    //Used when loading, and maybe you've got some extra characters that shouldn't be there.
    public static void UpdateActiveGOs()
    {
        List<PlayerController> endMe = new List<PlayerController>();
        foreach(var go in playerGOs)
        {
            bool inIt = false;
            //compare with each entry in the players list
            foreach(var p in players.players)
            {
                if (go.player.name == p.name)
                {
                    inIt = true;
                    break;
                }
            }

            if(!inIt)
            {
                endMe.Add(go);
            }
        }

        foreach(var i in endMe)
        {
            playerGOs.Remove(i);
            Destroy(i.gameObject);
        }
    }

    private void OnApplicationQuit()
    {
        Save();
    }

    #endregion

    public static List<Skill> AllSkills;
    [SerializeField]
    private List<Skill> allSkills;

    public static List<PlayerController> playerGOs = new List<PlayerController>();

    public GameObject playerPrefab;
    private static GameObject staticPlayerPrefab;

    private void Awake()
    {
        Load();

        FindObjectOfType<TwitchChatCommands>().Play.AddListener(OnPlay);
        FindObjectOfType<TwitchChatCommands>().Save.AddListener(Save);
        FindObjectOfType<TwitchChatCommands>().Load.AddListener(Load);
        staticPlayerPrefab = playerPrefab;
    }


    //add player to scene
    public void OnPlay(ChatMessage m)
    {
        GetOrAddPlayerToScene(m.name);
    }


    public static PlayerController GetOrAddPlayerToScene(string name)
    {
        GameObject player;

        foreach (var p in playerGOs)
        {
            if (p.player.name == name)
            {
                player = p.gameObject;
                return player.GetComponent<PlayerController>();
            }
        }

        //if no player found in list
        player = SpawnNewPlayer(name);
   
        return player.GetComponent<PlayerController>();
    }


    public static bool IsPlayerInScene(string name)
    {
        foreach(var p in playerGOs)
        {
            if(p.player.name == name)
            {
                return true;
            }
        }
        return false;
    }


    private static GameObject SpawnNewPlayer(string name)
    {
        float randx = Random.Range(-5f, 5f);
        GameObject player = Instantiate(staticPlayerPrefab, new Vector3(randx, -5f, 0), Quaternion.identity);
        playerGOs.Add(player.GetComponent<PlayerController>());

        PlayerController pc = player.GetComponent<PlayerController>();
        pc.player = GetOrAddPlayer(name);
        Debug.Log("setting new player's player to " + pc.player.name);
        pc.SetupPlayer();

        return player;
    }
}

[System.Serializable]
public class PlayerDatabase
{
    public List<Player> players = new List<Player>();

    public bool TryGetValue(string tryName, out Player p)
    {
        foreach (var player in players)
        {
            if (player.name == tryName)
            {
                p = player;
                return true;
            }
        }

        p = null;
        return false;
    }

    public void Add(string newName, Player newPlayer)
    {
        Player p;
        bool inList = TryGetValue(newName, out p);

        if (!inList)
        {
            players.Add(newPlayer);
        }
    }

    public void Remove(Player player)
    {
        if(players.Contains(player))
        {
            players.Remove(player);
        }
    }
}
