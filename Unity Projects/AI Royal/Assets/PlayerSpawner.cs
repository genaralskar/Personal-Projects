using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using UnityEngine.AI;

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
			newPlayer.transform.position = new Vector3(Random.Range(-spawnSize * .5f, spawnSize * .5f), 1, Random.Range(-spawnSize * .5f + 5, spawnSize * .5f + 1));
//			print(newPlayer.transform.position);
			newPlayer.GetComponent<CharController>().wanderDestination = wanderDestination;
			newPlayer.GetComponent<CharController>().spawner = this;
			newPlayer.GetComponent<NavMeshAgent>().enabled = true;
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
