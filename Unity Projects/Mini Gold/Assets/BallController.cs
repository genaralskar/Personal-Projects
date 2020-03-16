using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.PlayerLoop;

public class BallController : MonoBehaviour
{
    private Rigidbody rb;
    public SphereCollider col;

    private List<float> magnitudes = new List<float>();

    private float averageTime = 3;
    public float magAverage;

    public PhysicMaterial startPMat;
    public PhysicMaterial rollPMat;

    public float groundedDistance = .1f;
    
    public UnityAction BallStopped;

    
    private void Awake()
    {
        rb = GetComponent<Rigidbody>();
        rb.maxAngularVelocity = 50f;

        col = GetComponent<SphereCollider>();
        col.material = startPMat;
    }

    private void FixedUpdate()
    {
        if (groundedDistance > 0)
        {
            Ray ray = new Ray(transform.position + (Vector3.down * col.radius), Vector3.down);
            if (Physics.Raycast(ray, out var hit, groundedDistance))
            {
                transform.position = hit.point + (Vector3.up * col.radius);
                Debug.Log("grounding");
            }
        }
    }

    private void OnDrawGizmos()
    {
        Ray ray = new Ray(transform.position + (Vector3.down * col.radius), Vector3.down * groundedDistance);
        Gizmos.DrawRay(ray);
    }
    
    public void LaunchBall(Vector3 direction, float force)
    {
        rb.isKinematic = false;
        rb.AddForce(direction * force, ForceMode.Impulse);
        StartCoroutine(BallStopCheck());
    }

    private IEnumerator BallStopCheck()
    {
        yield return new WaitForFixedUpdate();
        col.material = rollPMat;
        magnitudes.Clear();
        magAverage = 1;
        while (magAverage > 0.1f)
        {
            yield return new WaitForSeconds(0.1f);
            //go all the lists
            if (magnitudes.Count > averageTime * 10)
            {
                magnitudes.RemoveAt(0);
            }
            magnitudes.Add(rb.velocity.sqrMagnitude);

            float magTotal = 0;
            foreach (var magnitude in magnitudes)
            {
                magTotal += magnitude;
            }

            magAverage = magTotal / magnitudes.Count;
        }

        rb.isKinematic = true;
        BallStopped?.Invoke();
        col.material = startPMat;
        Debug.Log("Ball stopped!");
    }
}
