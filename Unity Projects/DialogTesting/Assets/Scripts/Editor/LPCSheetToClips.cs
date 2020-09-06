using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

namespace genaralskar.Tools
{
    public class LPCSheetToClips : AnimationClipFromSpritesheet
    {
        private enum Type { Walk, Thrust, Slash, Shoot, Spellcast, Hurt, Universal}
        private static Sprite spritesheet;
        private static string clipName;
        private float framesPerSecond = 12;
        private bool loop = true;
        private string saveLocation = "Assets";
        private Type type;

        [MenuItem("Tools/genaralskar/LPC Sheet To Clips")]
        private static void Init()
        {
            LPCSheetToClips window = (LPCSheetToClips)EditorWindow.GetWindow(typeof(LPCSheetToClips));
            window.minSize = new Vector2(300, 300);
            window.Show();
        }

        private void OnGUI()
        {
            spritesheet = (Sprite)EditorGUILayout.ObjectField("Spritesheet", spritesheet, typeof(Sprite), false);
            clipName = EditorGUILayout.TextField("Clip prefix override", clipName);
            framesPerSecond = EditorGUILayout.FloatField("Frames Per Second", framesPerSecond);
            loop = EditorGUILayout.Toggle("Loop animation", loop);
            type = (Type)EditorGUILayout.EnumPopup("Animation Type", type);

            EditorGUILayout.LabelField($"Save Location: {saveLocation}");
            if (GUILayout.Button("Choose Save Location"))
            {
                saveLocation = EditorUtility.OpenFolderPanel("Open Folder", "Assets", "clip");
            }

            if (GUILayout.Button("Create Animation Clips"))
            {
                string spriteLocation = AssetDatabase.GetAssetPath(spritesheet);

                //if clip name has not been set, use name of the sprite sheet
                if (clipName == "")
                {
                    clipName = spritesheet.name;
                }

                SetupProperSheet(GetSpritesFromDirectory(spriteLocation), saveLocation, clipName, framesPerSecond, loop, type);
            }
        }

        private void SetupProperSheet(Sprite[] sprites, string saveLocation, string clipPrefix, float framesPerSecond, bool loop, Type type)
        {
            List<AnimationInfo> holders = new List<AnimationInfo>();
            if(type == Type.Spellcast)
            {
                SetupAnimations(sprites, holders, 7, "spellcast", false, out var inc);
            }

            if (type == Type.Thrust)
            {
                SetupAnimations(sprites, holders, 8, "thrust", false, out var inc);
            }
            
            if(type == Type.Walk)
            {
                Walk(sprites, holders, out var inc);
            }

            if (type == Type.Slash)
            {
                SetupAnimations(sprites, holders, 6, "slash", false, out var inc);
            }

            if(type == Type.Shoot)
            {
                SetupAnimations(sprites, holders, 13, "shoot", false, out var inc);
            }

            if(type == Type.Hurt)
            {
                Hurt(sprites, holders, out var inc);
            }

            if(type == Type.Universal)
            {
                int index = 0;
                int inc = 0;
                //run spell cast
                SetupAnimations(sprites, holders, 7, "spellcast", false, out inc, index);
                index += inc;
                Debug.Log("spellcasting done. index = " + index);

                //run thrust
                SetupAnimations(sprites, holders, 8, "thrust", false, out inc, index);
                index += inc;
                Debug.Log("thrust done");

                //run walk
                Walk(sprites, holders, out inc, index);
                index += inc;
                Debug.Log("wal done");

                //run slash
                SetupAnimations(sprites, holders, 6, "slash", false, out inc, index);
                index += inc;
                Debug.Log("slash done");

                //run shoot
                SetupAnimations(sprites, holders, 13, "shoot", false, out inc, index);
                index += inc;
                Debug.Log("shoot done");

                //run hurt
                Hurt(sprites, holders, out inc, index);
                Debug.Log("hurt done");

            }

            //create clip for each set of sprites collected
            foreach(var h in holders)
            {
                if(clipPrefix == null)
                {
                    clipPrefix = spritesheet.name;
                    Debug.Log("doin the thing");
                }
                CreateClip(h.Sprites, saveLocation, $"{clipPrefix} {h.Name}", framesPerSecond, h.Loop);
            }
        }

        private void Walk(Sprite[] sprites, List<AnimationInfo> clipsToCreate, out int indexIncrement, int startIndex = 0)
        {
            int index = startIndex;
            //up idle
            //frame 0
            Sprite[] anim = SpriteArrayFromRange(sprites, index, 1);
            index++;
            clipsToCreate.Add(new AnimationInfo(anim, "idleUp", true));

            //up
            //frame 1-8
            anim = SpriteArrayFromRange(sprites, index, 8);
            index += 8;
            clipsToCreate.Add(new AnimationInfo(anim, "walkUp", true));

            //left idle
            //frame 9
            anim = SpriteArrayFromRange(sprites, index, 1);
            index++;
            clipsToCreate.Add(new AnimationInfo(anim, "idleLeft", true));

            //left
            //frame 10-17
            anim = SpriteArrayFromRange(sprites, index, 8);
            index += 8;
            clipsToCreate.Add(new AnimationInfo(anim, "walkLeft", true));

            //down idle
            //frame 18
            anim = SpriteArrayFromRange(sprites, index, 1);
            index++;
            clipsToCreate.Add(new AnimationInfo(anim, "idleDown", true));

            //down
            //frames 19-26
            anim = SpriteArrayFromRange(sprites, index, 8);
            index += 8;
            clipsToCreate.Add(new AnimationInfo(anim, "walkDown", true));

            //right idle
            //frame 27
            anim = SpriteArrayFromRange(sprites, index, 1);
            index++;
            clipsToCreate.Add(new AnimationInfo(anim, "idleRight", true));

            //right
            //frame 28-35
            anim = SpriteArrayFromRange(sprites, index, 8);
            index += 8;
            clipsToCreate.Add(new AnimationInfo(anim, "walkRight", true));

            indexIncrement = index - startIndex;
            Debug.Log(indexIncrement);
        }

        private void Hurt(Sprite[] sprites, List<AnimationInfo> clipsToCreate, out int indexIncrement, int startIndex = 0)
        {
            int index = startIndex;
            int animationLength = 5;
            string animationName = "hurt";
            bool loop = false;
            //Up
            //frame 0
            Sprite[] anim = SpriteArrayFromRange(sprites, index, animationLength);
            index += animationLength;
            clipsToCreate.Add(new AnimationInfo(anim, $"{animationName}", loop));


            indexIncrement = startIndex - index;
        }

        private void SetupAnimations(Sprite[] sprites, List<AnimationInfo> clipsToCreate, int animationLength, string animationName, bool loop, out int indexIncrement, int startIndex = 0)
        {
            int index = startIndex;

            //Up
            Sprite[] anim = SpriteArrayFromRange(sprites, index, animationLength);
            index += animationLength;
            clipsToCreate.Add(new AnimationInfo(anim, $"{animationName}Up", false));

            //Left
            anim = SpriteArrayFromRange(sprites, index, animationLength);
            index += animationLength;
            clipsToCreate.Add(new AnimationInfo(anim, $"{animationName}Left", false));

            //Down
            anim = SpriteArrayFromRange(sprites, index, animationLength);
            index += animationLength;
            clipsToCreate.Add(new AnimationInfo(anim, $"{animationName}Down", false));

            //Right
            anim = SpriteArrayFromRange(sprites, index, animationLength);
            index += animationLength;
            clipsToCreate.Add(new AnimationInfo(anim, $"{animationName}Right", false));

            indexIncrement = index - startIndex;
        }

        private Sprite[] SpriteArrayFromRange(Sprite[] sprites, int start, int range)
        {
            //Debug.Log($"Start {start} range {range}");
            Sprite[] s = new Sprite[range];
            for (int i = 0; i < range; i++)
            {
                s[i] = sprites[i + start];
            }

            return s;
        }
    }

    struct AnimationInfo
    {
        private Sprite[] sprites;
        public Sprite[] Sprites => sprites;
        private string name;
        public string Name => name;
        private bool loop;
        public bool Loop => loop;
        public AnimationInfo(Sprite[] sprites, string name, bool loop)
        {
            this.sprites = sprites;
            this.name = name;
            this.loop = loop;
        }
    }
}