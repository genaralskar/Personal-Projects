using UnityEngine;

[RequireComponent(typeof(Animator))]
[RequireComponent(typeof(SpriteRenderer))]
public class Equipment : MonoBehaviour
{
    public enum Type { Head, Neck, Chest, Back, Waist, Hands, Legs, Feet, Base }

    [SerializeField]
    private Type type;
    public Type EquipmentType => type;

    private Animator anims;

    private void Awake()
    {
        anims = GetComponent<Animator>();
    }

    public void Equip(EquipmentSO newItem)
    {
        Debug.Log("Equipping " + newItem);
        SetAnimatorController(newItem.OverrideController);
    }

    public void UpdateAnimatorFloat(string name, float value)
    {
        if (!anims.runtimeAnimatorController) return;
        anims.SetFloat(name, value);
    }

    public void UpdateAnimatorBool(string name, bool value)
    {
        if (!anims.runtimeAnimatorController) return;
        anims.SetBool(name, value);
    }

    private void SetAnimatorController(AnimatorOverrideController newController)
    {
        Debug.Log("Equipping " + newController);
        anims.runtimeAnimatorController = newController;
    }
}
