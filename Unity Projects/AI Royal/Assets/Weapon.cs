using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(menuName = "Weapons/Weapon")]
public class Weapon : ScriptableObject
{
	public GameObject projectile;
	public int damage;
	public float cooldown = .2f;
	private bool canFire = true;

	/*public void FireWeapon()
	{
		if (canFire)
		{
			GameObject tempProj = Instantiate(projectile);
			tempProj.transform.position = projSpawn.position;
			tempProj.transform.rotation = projSpawn.rotation;
			tempProj.AddComponent<WeaponDamager>();
			tempProj.GetComponent<WeaponDamager>().damage = this.damage;
			tempProj.GetComponent<WeaponDamager>().spawnerTransform = transform.root;
			fireSound.Play();

			StartCoroutine(CooldownTimer());
		}
		
	}*/

	
}
