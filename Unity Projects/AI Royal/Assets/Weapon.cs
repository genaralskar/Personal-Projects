using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Weapon : MonoBehaviour
{
	public GameObject projectile;
	public Transform projSpawn;
	public int damage;
	public float cooldown = .2f;
	private bool canFire = true;

	public void FireWeapon()
	{
		if (canFire)
		{
			GameObject tempProj = Instantiate(projectile);
			tempProj.transform.position = projSpawn.position;
			tempProj.transform.rotation = projSpawn.rotation;
			tempProj.AddComponent<WeaponDamager>();
			tempProj.GetComponent<WeaponDamager>().damage = this.damage;

			StartCoroutine(CooldownTimer());
		}
		
	}

	private IEnumerator CooldownTimer()
	{
		canFire = false;
		yield return new WaitForSeconds(cooldown);
		canFire = true;
	}
}
