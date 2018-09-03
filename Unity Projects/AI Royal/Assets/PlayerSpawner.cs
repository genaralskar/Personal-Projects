using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public class PlayerSpawner : MonoBehaviour
{

	public GameObject player;
	public int amountOfPlayers = 100;
	public float spawnSize = 500;
	public Transform wanderDestination;

	public List<GameObject> activePlayers;
	
	// Use this for initialization
	void Start ()
	{
		Spawn();
	}

	void Spawn()
	{
		for (int i = 0; i < amountOfPlayers; i++)
		{
			GameObject newPlayer = Instantiate(player);
			newPlayer.transform.position.Set(Random.Range(-spawnSize * .5f, spawnSize * .5f), 1, Random.Range(-spawnSize * .5f, spawnSize * .5f));
			newPlayer.GetComponent<CharController>().wanderDestination = wanderDestination;
			newPlayer.GetComponent<CharController>().spawner = this;
			activePlayers.Add(newPlayer);
		}
	}

	public CharController FindActivePlayer()
	{
		return activePlayers[Random.Range(0, activePlayers.Count - 1)].GetComponent<CharController>();
	}

	public void RemovePlayer(GameObject player)
	{
		if (activePlayers.Contains(player))
		{
			activePlayers.Remove(player);
		}
	}
}
