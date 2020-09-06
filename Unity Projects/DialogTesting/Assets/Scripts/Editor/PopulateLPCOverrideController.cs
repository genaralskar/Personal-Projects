using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

namespace genaralskar.Tools
{
    public class PopulateLPCOverrideController : Editor
    {
        [MenuItem("Tools/genaralskar/Populate LPC Override Controller")]
        private static void Populate()
        {
            Object[] selection = Selection.objects;
            AnimatorOverrideController controller = new AnimatorOverrideController();

            bool foundAnim = false;
            foreach (var sel in selection)
            {
                if (sel is AnimatorOverrideController)
                {
                    controller = (AnimatorOverrideController)sel;
                    foundAnim = true;
                    break;
                }
            }

            if (!foundAnim)
            {
                Debug.LogError("No AnimatorOverrideController found in selection");
                return;
            }

            AnimationClipOverrides clipOverrides = new AnimationClipOverrides(controller.overridesCount);
            controller.GetOverrides(clipOverrides);
            foreach (var sel in selection)
            {
                if (sel is AnimationClip)
                {
                    //parce end of name for clip
                    AnimationClip clip = (AnimationClip)sel;
                    string name = clip.name.Split(' ')[clip.name.Split(' ').Length - 1];
                    clipOverrides[name] = clip;
                }
            }
            controller.ApplyOverrides(clipOverrides);
        }
    }

    public class AnimationClipOverrides : List<KeyValuePair<AnimationClip, AnimationClip>>
    {
        public AnimationClipOverrides(int capacity) : base(capacity) { }

        public AnimationClip this[string name]
        {
            get { return this.Find(x => x.Key.name.Equals(name)).Value; }
            set
            {
                int index = this.FindIndex(x => x.Key.name.Split(' ')[x.Key.name.Split(' ').Length - 1].Equals(name));
                if (index != -1)
                    this[index] = new KeyValuePair<AnimationClip, AnimationClip>(this[index].Key, value);
            }
        }
    }
}