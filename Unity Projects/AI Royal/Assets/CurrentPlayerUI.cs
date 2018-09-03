using System.Collections;
using System.Collections.Generic;
using Cinemachine;
using UnityEngine;
using UnityEngine.UI;

public class CurrentPlayerUI : MonoBehaviour
{

	public CharController currentPlayer;
	public Image healthBar;
	public Controller playerController;

	public CinemachineBlend blend;
	
	// Use this for initialization
	void Start () {
		ChangePlayer(currentPlayer);
	}

	private void ChangePlayer(CharController newCharController)
	{
		currentPlayer.health.HealthDamage -= UpdateHealthBar;
		
		currentPlayer = newCharController;
		currentPlayer.controller = playerController;
		currentPlayer.lookController = currentPlayer.agentLook;

		currentPlayer.health.HealthDamage += UpdateHealthBar;
		
	
	}

	public void UpdateHealthBar()
	{
		healthBar.fillAmount = (float)currentPlayer.health.health / currentPlayer.health.maxHealth;
	}
}
