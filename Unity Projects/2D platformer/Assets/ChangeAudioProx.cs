using System;
using UnityEngine;

public class ChangeAudioProx : MonoBehaviour
{
    private AudioSource source;
    public Transform objToTrack;
    public float minDistance = 0;
    public float maxDistance = 5;
    public float farVolume = 1;
    public float nearVolume = 1;

    private void Awake()
    {
        source = GetComponent<AudioSource>();
    }

    private void Update()
    {
        float distance = Vector2.Distance(transform.position, objToTrack.position);
        distance = Mathf.Clamp(distance, minDistance, maxDistance);
        distance = distance / maxDistance;

        float volume = Mathf.Lerp(nearVolume, farVolume, distance);
        source.volume = volume;
        //Debug.Log($"distance = {distance}, volume = {volume}");
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position, minDistance);
        Gizmos.color = Color.green;
        Gizmos.DrawWireSphere(transform.position, maxDistance);
    }
}
