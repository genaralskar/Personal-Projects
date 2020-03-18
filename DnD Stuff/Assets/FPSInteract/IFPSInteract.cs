using UnityEngine;

namespace genaralskar.FPSInteract
{
    public interface IFPSInteract
    {
        void OnInteract(GameObject playerCamera, RaycastHit hit);
    }
}