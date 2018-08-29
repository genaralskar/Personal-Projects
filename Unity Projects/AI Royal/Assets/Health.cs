using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Health : MonoBehaviour
{

	public UnityAction HealthAtZero = delegate {  };
	public UnityAction HealthDamage = delegate {  };

	public int maxHealth = 100;
	public int health = 100;

	public CharController charController;

	private void OnEnable()
	{
		health = maxHealth;
	}

	private void OnParticleCollision(GameObject other)
	{
		int newDamage = other.GetComponent<WeaponDamager>().damage;
		AddHealth(-newDamage);
		HealthDamage();
		if (charController.controller == charController.wander 
		    || charController.controller == charController.moveToLastPos
		    || charController.controller == charController.scan)
		{
			charController.AITransform = other.transform;
			//charController.controller = charController.runAway;
		}
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
