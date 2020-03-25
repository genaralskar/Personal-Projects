using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace genaralskar.randName
{
    public class NameRando : MonoBehaviour
    {
        public List<NameType> types;
        public NameType air;
        public NameType stone;
        public NameType fire;

        public float genNum = 10f;

        [ContextMenu("Rando")]
        public void Randomize()
        {
            for (int i = 0; i < genNum;)
            {
                string n = GetRandomName();
                if (n == "")
                {
                    continue;
                }
                Debug.Log(n);
                i++;
            }
        }

        public string GetRandomName()
        {
            string n = "";
            
            //get random types
            NameType[] t = new NameType[3];
            for (int i = 0; i < 3; i++)
            {
                int rand = Random.Range(0, types.Count);
                t[i] = types[rand];
            }

            if (t[0] == air && t[0] == stone && t[2] == fire)
            {
                return n;
            }
            
            for (int i = 0; i < 3; i++)
            {
                n = $"{n} {t[i].GetRandomName()}";
            }

            return n;
        }
    }
}