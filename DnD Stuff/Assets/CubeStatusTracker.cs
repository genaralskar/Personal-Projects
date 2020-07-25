using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class CubeStatusTracker : MonoBehaviour
{
    public enum CubeStatus {Empty, Red, Blue, Green, Yellow, Focus}

    public CubeStatus[][][] statusArray;

    public static UnityAction<Vector3Int, CubeStatus> UpdateCubeStatus;

    private void Awake()
    {
        UpdateCubeStatus += UpdateCubeStatusHandler;
    }

    private void UpdateCubeStatusHandler(Vector3Int l, CubeStatus status)
    {
        statusArray[l.x][l.y][l.z] = status;
    }

    public CubeStatus GetStatus(Vector3Int l)
    {
        return statusArray[l.x][l.y][l.z];
    }

    public bool CheckStatus(Vector3Int l, CubeStatus status)
    {
        return GetStatus(l) == status;
    }

    private void CheckIfCubeFinished()
    {
        // First floor
        // check 0, 0, 0
        Vector3Int l = Vector3Int.zero;
        if (!CheckStatus(l, CubeStatus.Green)) return;

        // check 2, 0, 0
        l.x = 2;
        if (!CheckStatus(l, CubeStatus.Blue)) return;

        // check 0, 0, 2
        l.x = 0;
        l.z = 2;
        if (!CheckStatus(l, CubeStatus.Red)) return;

        // check 2, 0, 2
        l.x = 2;
        if (!CheckStatus(l, CubeStatus.Yellow)) return;

        // Second floor

        // check 0, 1, 0
        l = Vector3Int.zero;
        l.y = 1;
        if (!CheckStatus(l, CubeStatus.Focus)) return;

        // check 2, 1, 0
        l.x = 2;
        if (!CheckStatus(l, CubeStatus.Focus)) return;

        // check 0, 1, 2
        l.x = 0;
        l.z = 2;
        if (!CheckStatus(l, CubeStatus.Focus)) return;

        // check 2, 1, 2
        l.x = 2;
        if (!CheckStatus(l, CubeStatus.Focus)) return;

        // Third floor

        // check 0, 2, 0
        l = Vector3Int.zero;
        l.y = 2;
        if (!CheckStatus(l, CubeStatus.Red)) return;

        // check 2, 2, 0
        l.x = 2;
        if (!CheckStatus(l, CubeStatus.Green)) return;

        // check 0, 2, 2
        l.x = 0;
        l.z = 2;
        if (!CheckStatus(l, CubeStatus.Blue)) return;

        // check 2, 2, 2
        l.x = 2;
        if (!CheckStatus(l, CubeStatus.Red)) return;

        // If its made it this far, then everything should be where it's supposed to be!
        // END THE GAME!
    }

    public static CubeStatus CrystalColorsToCubeStatus(Crystal.CrystalColor color)
    {
        if (color == Crystal.CrystalColor.Red1 || color == Crystal.CrystalColor.Red2 || color == Crystal.CrystalColor.Red3)
        {
            return CubeStatus.Red;
        }

        if (color == Crystal.CrystalColor.Blue1 || color == Crystal.CrystalColor.Blue2)
        {
            return CubeStatus.Blue;
        }

        if (color == Crystal.CrystalColor.Green1 || color == Crystal.CrystalColor.Green2)
        {
            return CubeStatus.Green;
        }

        if (color == Crystal.CrystalColor.Yellow)
        {
            return CubeStatus.Yellow;
        }

        if (color == Crystal.CrystalColor.White)
        {
            return CubeStatus.Focus;
        }

        return CubeStatus.Empty;
    }

}
