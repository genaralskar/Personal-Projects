using System.Collections;
using System.Collections.Generic;
using Cinemachine;
using UnityEngine;

public class DeathCamera : MonoBehaviour
{

    public GameObject deathCam;
    public GameObject playerCam;
    public float waitTime = 3f;

    private float lookaheadtime = 0;

    private void Awake()
    {
        PlayerController.Death += DeathHandler;
    }

    private void DeathHandler(GameObject player)
    {
        Vector3 pos = Checkpoint.respawnPosition;
        pos.z = -10;
        deathCam.transform.position = pos;
        
        player.SetActive(false);
        deathCam.SetActive(true);
        
        
        //set stupid lookahead amount
        lookaheadtime = playerCam.GetComponent<CinemachineVirtualCamera>()
            .GetCinemachineComponent<CinemachineFramingTransposer>()
            .m_LookaheadTime;
        playerCam.GetComponent<CinemachineVirtualCamera>().Follow = null;
        //playerCam.SetActive(false);
        
        StartCoroutine(RespawnWait(player));
    }

    private IEnumerator RespawnWait(GameObject player)
    {
        yield return new WaitForSeconds(waitTime - .1f);
        player.transform.position = Checkpoint.respawnPosition;
        yield return new WaitForSeconds(.1f);
        deathCam.SetActive(false);
        
        playerCam.SetActive(true);
        
        player.SetActive(true);
        Checkpoint.Respawn?.Invoke(player);
        
        //playerCam.GetComponent<CinemachineVirtualCamera>().GetCinemachineComponent<CinemachineFramingTransposer>()
         //   .m_LookaheadTime = lookaheadtime;
        playerCam.GetComponent<CinemachineVirtualCamera>().Follow = player.transform;
    }
}
