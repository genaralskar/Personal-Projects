using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class DoorHelper : MonoBehaviour
{
    public string numbers;
    
    private int[] nums;
    
    [ContextMenu("Get Numbers")]
    public void SetNumbers()
    {
        var arr = numbers.Split(',');
        for (int i = 0; i < arr.Length; i++)
        {
            arr[i] = arr[i].Trim();
        }
        nums = Array.ConvertAll(arr, int.Parse);

        List<int> n =  new List<int>();
        n.AddRange(nums);

        
        //List of all combinations
        //List<int> comb = GetCombination(n);
        List<int> comb = new List<int>();
        List<List<int>> l = GetAllCombos(n);

        foreach (var list in l)
        {
            int sum = list[0];
            list.RemoveAt(0);
            foreach (var num in list)
            {
                sum = int.Parse(sum.ToString() + num.ToString());
                //Debug.Log($"Parcing: {c}");
            }
            comb.Add(sum);
        }

        foreach (var num in comb)
        {
            //Debug.Log(num);
        }
        
        

        //List of all sums
        int hiV = 0;
        foreach (var num in n)
        {
            hiV += num;
        }
        //Debug.Log(hiV);
        
        int[] sums = new int[hiV];
        foreach (var c in comb)
        {
            sums[AddDigits(c) - 1] += 1;
            //Debug.Log($"Sum: {AddDigits(c)}, location: {AddDigits(c) - 1}, value: {sums[AddDigits(c) - 1]}");
        }

        for (int i = 0; i < sums.Length; i++)
        {
            if(sums[i] <= 0) continue;
            Debug.Log($"{i + 1}:{sums[i]}");
        }
    }

    private int AddDigits(int n)
    {
        n = Math.Abs(n);
        int sum = 0;
        while (n != 0) {
            sum += n % 10;
            n /= 10;
        }

        return sum;
    }
    
    static List<int> GetCombination(List<int> list)
    {
        List<int> arr = new List<int>();
        
        double count = list.Count * list.Count;
        for (int i = 1; i <= count - 1; i++)
        {
            List<int> curr = new List<int>();
            
            string str = Convert.ToString(i, 2).PadLeft(list.Count, '0');
            for (int j = 0; j < str.Length; j++)
            {
                if (str[j] == '1')
                {
                    curr.Add(list[j]);
                    Debug.Log("J" + j);
                    //Debug.Log(list[j]);
                }
            }

            int c = curr[0];
            curr.RemoveAt(0);
            foreach (var num in curr)
            {
                c = int.Parse(c.ToString() + num.ToString());
                //Debug.Log($"Parcing: {c}");
            }
            arr.Add(c);
            //Debug.Log($"parced: {c}");
        }

        return arr;
    }
    
    public static List<List<T>> GetAllCombos<T>(List<T> list)
    {
        List<List<T>> result = new List<List<T>>();
        // head
        result.Add(new List<T>());
        result.Last().Add(list[0]);
        if (list.Count == 1)
            return result;
        // tail
        List<List<T>> tailCombos = GetAllCombos(list.Skip(1).ToList());
        tailCombos.ForEach(combo =>
        {
            result.Add(new List<T>(combo));
            combo.Add(list[0]);
            result.Add(new List<T>(combo));
        });
        return result;
    }
}
