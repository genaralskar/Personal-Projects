using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WeaponManager : MonoBehaviour {

    public Weapon weapon;
	public Transform projSpawn;
	public AudioSource fireSound;
	public GameObject currentWeapon;
	
	private bool canFire = true;

	private void Awake()
	{
		weapon = currentWeapon.GetComponent<WeaponMono>().weapon;
		projSpawn = currentWeapon.GetComponent<WeaponMono>().projSpawn;
	}

	public void FireWeapon()
	{
		if (canFire)
		{
			GameObject tempProj = Instantiate(weapon.projectile);
			tempProj.transform.position = projSpawn.position;
			tempProj.transform.rotation = projSpawn.rotation;
			tempProj.AddComponent<WeaponDamager>();
			tempProj.GetComponent<WeaponDamager>().damage = weapon.damage;
			tempProj.GetComponent<WeaponDamager>().spawnerTransform = transform.root;
			if(fireSound != null)
				fireSound.Play();

			StartCoroutine(CooldownTimer());
		}
	}
	
	private IEnumerator CooldownTimer()
	{
		canFire = false;
		yield return new WaitForSeconds(weapon.cooldown);
		canFire = true;
	}

	public void SwapWeapon(GameObject newWeapon)
	{
		WeaponMono tempMono = newWeapon.GetComponent<WeaponMono>();
		weapon = tempMono.weapon;
		//drop current weapon
		currentWeapon.transform.GetChild(0).parent = null;
		//swap to new weapon
		currentWeapon = newWeapon;
		newWeapon.transform.parent = transform;
		newWeapon.transform.localPosition = Vector3.zero;
		newWeapon.transform.localRotation = Quaternion.identity;
		
		
		projSpawn = tempMono.projSpawn;
	}
}
