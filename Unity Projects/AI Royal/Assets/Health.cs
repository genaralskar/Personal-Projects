using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Health : MonoBehaviour
{

	public UnityAction HealthAtZero = delegate {  };

	public int maxHealth = 100;
	public int health = 100;

	private void OnEnable()
	{
		health = maxHealth;
	}

	private void OnParticleCollision(GameObject other)
	{
		int newDamage = other.GetComponent<WeaponDamager>().damage;
		AddHealth(-newDamage);
	}

	public void AddHealth(int amount)
	{
		health += amount;

		health = Mathf.Clamp(health, 0, maxHealth);
		
		if (health == 0)
		{
			HealthAtZero();
			gameObject.SetActive(false);
		}
	}
	
	public void SetHealth(int amount)
	{
		health += amount;
		
		health = Mathf.Clamp(health, 0, maxHealth);
	}
}
