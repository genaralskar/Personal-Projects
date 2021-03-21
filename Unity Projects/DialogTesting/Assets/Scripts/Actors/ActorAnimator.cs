using UnityEngine;

[RequireComponent(typeof(Actor))]
public class ActorAnimator : MonoBehaviour
{
    private Actor actor;
    [SerializeField]
    private EquipmentManager equipManager;

    private void Awake()
    {
        actor = GetComponent<Actor>();
        if(!equipManager)
        {
            equipManager = GetComponentInChildren<EquipmentManager>();
        }
    }
    public void UpdateAnimatorFloat(string param, float value)
    {
        if (!equipManager) return;
        equipManager.UpdateAnimatorFloat(param, value);
    }

    public void UpdateAnimatorBool(string param, bool value)
    {
        equipManager.UpdateAnimatorBool(param, value);
    }
}
