using System.Collections;
using System.Collections.Generic;
using Cinemachine;
using UnityEngine;
using UnityEngine.UI;

public class PlayerSwapManager : MonoBehaviour
{

	public CharController currentPlayer;
	public Image healthBar;
	public Controller playerController;
	public CameraZoom cameraZoomer;
	public CinemachineVirtualCamera playerCamera;

	public PlayerSpawner spawner;
	
	// Use this for initialization
	void Start () 
	{
		//currentPlayer.health.HealthAtZero += Death;
	}

	private void Death()
	{
		currentPlayer.health.HealthAtZero -= Death;
		currentPlayer.health.HealthDamage -= UpdateHealthBar;
		//zoom out
		cameraZoomer.ZoomOut();
	}

	public void FindNewPlayer()
	{
		CharController newPlayer = spawner.FindActivePlayer();

		currentPlayer = newPlayer;
		
		playerCamera.Follow = newPlayer.transform;
		cameraZoomer.ZoomIn();
	}
	
	public void ChangePlayer()
	{
		if (currentPlayer.gameObject.activeInHierarchy)
		{
			currentPlayer.controller = playerController;
			currentPlayer.lookController = currentPlayer.agentLook;
			currentPlayer.agent.ResetPath();
	
			currentPlayer.health.HealthDamage += UpdateHealthBar;
			UpdateHealthBar();
			currentPlayer.health.HealthAtZero += Death;
		}

		else
		{
			cameraZoomer.ZoomOut();
		}
		
	}
	
	private void ChangePlayer(CharController newCharController)
	{
		//zoom out on death	
		currentPlayer = newCharController;
		currentPlayer.controller = playerController;
		currentPlayer.lookController = currentPlayer.agentLook;

		currentPlayer.health.HealthDamage += UpdateHealthBar;
		currentPlayer.health.HealthAtZero += Death;
		
		//move player cam
		//zoom in
		
	
	}

	public void UpdateHealthBar()
	{
		healthBar.fillAmount = (float)currentPlayer.health.health / currentPlayer.health.maxHealth;
	}
}
