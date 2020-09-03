using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeathHandler : MonoBehaviour
{
    public GameObject obj;
    public Health health;
    public bool respawn;
    public float respawnTimer = 3;
    public ParticleSystem deathParticles;
    public Transform respawnPoint;
    
    private void Awake()
    {
        if (!health)
            health = GetComponent<Health>();

        if (!obj)
            obj = health.gameObject;

        health.Death += DeathHandle;
    }

    private void DeathHandle()
    {
        StartCoroutine(Death());
    }
    
    private IEnumerator Death()
    {
        yield return new WaitForSeconds(.5f);
        //disable
        obj.SetActive(false);
        
        //particles on death
        if(deathParticles)
        {
            deathParticles.transform.position = health.transform.position;
            deathParticles.Play();
        }
        
        //wait
        yield return new WaitForSeconds(respawnTimer);

        //re-enable
        obj.transform.position = respawnPoint.position;
        obj.SetActive(true);
    }
}
