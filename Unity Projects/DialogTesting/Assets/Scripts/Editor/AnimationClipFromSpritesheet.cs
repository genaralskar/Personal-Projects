using UnityEngine;
using UnityEditor;

namespace genaralskar.Tools
{
    public class AnimationClipFromSpritesheet : EditorWindow
    {
        private static Sprite spritesheet;
        private static bool loop = true;
        private static float framesPerSecond = 12f;
        private static string clipName = "";
        private static string saveLocation = "Assets";

        [MenuItem("Tools/genaralskar/Spritesheet Clip Creator")]
        private static void Init()
        {
            AnimationClipFromSpritesheet window = (AnimationClipFromSpritesheet)EditorWindow.GetWindow(typeof(AnimationClipFromSpritesheet));
            window.minSize = new Vector2(300, 300);
            window.Show();
        }

        private void OnGUI()
        {
            spritesheet = (Sprite)EditorGUILayout.ObjectField("Spritesheet", spritesheet, typeof(Sprite), false);
            clipName = EditorGUILayout.TextField("Clip name override", clipName);
            framesPerSecond = EditorGUILayout.FloatField("Frames Per Second", framesPerSecond);
            loop = EditorGUILayout.Toggle("Loop animation", loop);

            EditorGUILayout.LabelField($"Save Location: {saveLocation}");
            if(GUILayout.Button("Choose Save Location"))
            {
                saveLocation = EditorUtility.OpenFolderPanel("Open Foler", "Assets", "clip");
            }

            if (GUILayout.Button("Create Animation Clip"))
            {
                string spriteLocation = AssetDatabase.GetAssetPath(spritesheet);

                //if clip name has not been set, use name of the sprite sheet
                if(clipName == "")
                {
                    clipName = spritesheet.name;
                }

                CreateClip(GetSpritesFromDirectory(spriteLocation), saveLocation, clipName, framesPerSecond, loop);
            }
        }

        protected Sprite[] GetSpritesFromDirectory(string directory)
        {
            // load all sprites at location into array
            Object[] spriteObjects = AssetDatabase.LoadAllAssetRepresentationsAtPath(directory);

            //create new array of sprites
            Sprite[] sprites = new Sprite[spriteObjects.Length];

            //populate array of sprites
            for(int i = 0; i < spriteObjects.Length; i++)
            {
                if(spriteObjects[i] is Sprite)
                {
                    sprites[i] = (Sprite)spriteObjects[i];
                }
            }

            return sprites;
        }

        protected void CreateClip(Sprite[] sprites, string saveLocation, string clipName, float fps, bool loop)
        {
            if(clipName == "")
            {
                clipName = spritesheet.name;
            }
            // create new animation clip with name name
            var clip = new AnimationClip
            {
                name = clipName
            };

            //create new curve binding to apply to animation clip later
            var spriteBinding = new EditorCurveBinding
            {
                type = typeof(SpriteRenderer),
                path = string.Empty,
                propertyName = "m_Sprite"
            };

            // create array of object reference keyframes to apply the sprites too
            var spriteKeyFrames = new ObjectReferenceKeyframe[sprites.Length];

            float timeValue = 0;
            float timefps = 1 / fps;

            for (int i = 0; i < sprites.Length; i++)
            {
                //make new keyframe
                spriteKeyFrames[i] = new ObjectReferenceKeyframe();
                //set its time position in the animation
                spriteKeyFrames[i].time = timeValue;
                //assing the sprite
                spriteKeyFrames[i].value = sprites[i];
                timeValue += timefps;
            }
            // apply stuff to animation clip
            AnimationUtility.SetObjectReferenceCurve(clip, spriteBinding, spriteKeyFrames);

            // create animation clip settings, set loop to false
            var clipSettings = new AnimationClipSettings { loopTime = loop };
            AnimationUtility.SetAnimationClipSettings(clip, clipSettings);

            // set clip fps
            clip.frameRate = fps;

            // add clip to project assets
            if (saveLocation.IndexOf("Assets/") >= 0)
            {
                saveLocation = saveLocation.Substring(saveLocation.IndexOf("Assets/"));
            }
            else
            {
                saveLocation = "Assets/";
            }

            AssetDatabase.CreateAsset(clip, $"{saveLocation}/{clipName}.anim");
            AssetDatabase.SaveAssets();
            AssetDatabase.Refresh();
        }
    }
}