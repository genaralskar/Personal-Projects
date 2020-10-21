using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class MultiSliceSprites : EditorWindow
{
    static int spriteWidth = 64;
    static int spriteHeight = 64;
    static float pivotX = .5f;
    static float pivotY = .5f;

    [MenuItem("Tools/genaralskar/Multi Slice Sprite")]
    private static void Init()
    {
        MultiSliceSprites window = (MultiSliceSprites)EditorWindow.GetWindow(typeof(MultiSliceSprites));
        window.minSize = new Vector2(300, 300);
        window.Show();
    }

    private void OnGUI()
    {
        spriteWidth = EditorGUILayout.IntField("Cell Width", spriteWidth);
        spriteWidth = EditorGUILayout.IntField("Cell Height", spriteHeight);
        pivotX = EditorGUILayout.FloatField("Pivot X", pivotX);
        pivotY = EditorGUILayout.FloatField("Pivot Y", pivotY);

        if (GUILayout.Button("Slice"))
        {
            SliceSprites(spriteWidth, spriteHeight, pivotX, pivotY);
        }
    }

    static void SliceSprites(int width, int height, float _pivotX, float _pivotY)
    {
        // Change the below for the with and height dimensions of each sprite within the spritesheets
        int sliceWidth = width;
        int sliceHeight = height;

        Object[] sel = Selection.objects;
        List<Texture2D> textures = new List<Texture2D>();
        foreach (var s in sel)
        {
            if (s is Texture2D t)
            {
                textures.Add(t);
            }
        }

        for (int z = 0; z < textures.Count; z++)
        {
            Debug.Log($"slicing {textures[z]}");

            string path = AssetDatabase.GetAssetPath(textures[z]);
            TextureImporter ti = AssetImporter.GetAtPath(path) as TextureImporter;
            ti.isReadable = true;
            ti.spriteImportMode = SpriteImportMode.Multiple;

            List<SpriteMetaData> newData = new List<SpriteMetaData>();

            Texture2D spriteSheet = textures[z] as Texture2D;

            int counter = 0;

            for (int y = spriteSheet.height; y > 0; y -= sliceHeight)
            {
                for (int x = 0; x < spriteSheet.width; x += sliceWidth)
                {
                    SpriteMetaData smd = new SpriteMetaData();
                    smd.pivot = new Vector2(_pivotX, _pivotY);
                    smd.alignment = 9;
                    smd.name = $"{textures[z].name}_{counter}";
                    //smd.name = (spriteSheet.height - j) / sliceHeight + ", " + i / sliceWidth;
                    smd.rect = new Rect(x, y - sliceHeight, sliceWidth, sliceHeight);
                    Debug.Log(smd.rect);

                    newData.Add(smd);
                    counter++;
                    Debug.Log($"x {x}, y {y}");
                }
            }

            ti.spritesheet = newData.ToArray();
            AssetDatabase.ImportAsset(path, ImportAssetOptions.ForceUpdate);
        }
        Debug.Log("Done Slicing!");
    }
}
