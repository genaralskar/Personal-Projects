using UnityEngine;
using UnityEngine.Events;

public class ColliderEvents : MonoBehaviour
{

    public UnityEvent onTriggerEnter;
    public UnityEvent onTriggerExit;
    public UnityEvent onTriggerStay;
    public UnityEvent onCollisionEnter;
    public UnityEvent onCollisionExit;

    private void OnTriggerEnter2D(Collider2D other)
    {
        onTriggerEnter?.Invoke();
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        onTriggerExit?.Invoke();
    }

    private void OnTriggerStay2D(Collider2D other)
    {
        onTriggerStay?.Invoke();
    }

    private void OnCollisionEnter2D(Collision2D other)
    {
        onCollisionEnter?.Invoke();
    }

    private void OnCollisionExit2D(Collision2D other)
    {
        onCollisionExit?.Invoke();
    }
}
