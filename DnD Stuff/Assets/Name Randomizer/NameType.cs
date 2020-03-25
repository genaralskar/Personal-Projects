using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

namespace genaralskar.randName
{
    [CreateAssetMenu(menuName = "NameType")]
    public class NameType : ScriptableObject
    {
        [TextArea(4, 10)]
        public string names;

        public string[] GetNames()
        {
            var arr = names.Split(',');
            for (int i = 0; i < arr.Length; i++)
            {
                arr[i] = arr[i].Trim();
            }

            return arr;
        }

        public string GetRandomName()
        {
            var arr = GetNames();
            int i = Random.Range(0, arr.Length);
            return arr[i];
        }
    }
}