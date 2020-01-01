using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.ProBuilder;
using UnityEngine.UI;

public class SlidingPuzzle : MonoBehaviour
{
    private PuzzlePiece[,] grid;

    public GameObject peicePrefab;
    
    [Tooltip("Should have gridSize^2 pieces")]
    public List<GameObject> peices;

    public int gridSize = 3;
    public Vector2Int gridSizeVect = new Vector2Int(3, 3);
    public RectTransform gridHolder;

    public int randomizationStep = 20;
    public float randomizeStepTime = .1f;

    public bool playable = false;

    public RawImage templateImage;

    private Vector2Int currentBlankSpaceVec;
    private Vector3[,] spaceLocations;

    private void Awake()
    {
        grid = new PuzzlePiece[gridSizeVect.x,gridSizeVect.y];
        spaceLocations = new Vector3[gridSizeVect.x,gridSizeVect.y];

        //resize image
        templateImage.SetNativeSize();
        float holderHeight = gridHolder.rect.height;
        float width = templateImage.rectTransform.rect.width;
        float height = templateImage.rectTransform.rect.height;
        float ratio = width / height;
        float heightdiff = holderHeight - height;
        if (heightdiff > 0)
        {
            float widthDiff = width + (heightdiff * ratio);
            Vector2 newSize = new Vector2(widthDiff, holderHeight);
            templateImage.rectTransform.sizeDelta = newSize;
        }
        
        
        
        PopulateGrid();
    }

    private void Start()
    {

    }

    public void PopulateGrid()
    {
        float width = gridHolder.rect.width;
        float height = gridHolder.rect.height;
        float spacing = 0;
        if (width / (float) gridSizeVect.x < height / (float) gridSizeVect.y)
        {
            spacing = width / gridSizeVect.x;
        }
        else
        {
            spacing = height / gridSizeVect.y;
        }
        float startSpacing = spacing / 2;
        startSpacing = 0;

        //spawn tiles
        for (int i = 0; i < gridSizeVect.x * gridSizeVect.y - 1; i++)
        {
            GameObject newObj = Instantiate(peicePrefab, transform);
            peices.Add(newObj);
        }
        
        int y = 0;
        
        //i = x, j = y
        //j first then y so it goes left to right, bottom to top
        
        //move tiles
        for (int j = 0; j < gridSizeVect.y; j++)
        {
            for (int i = 0; i < gridSizeVect.x; i++)
            {
                Vector3 newPos = Vector3.zero;
                newPos.x = startSpacing + ((i - (gridSizeVect.x/2)) * spacing);
                newPos.y = startSpacing + ((j - (gridSizeVect.y/2)) * spacing);
                if (gridSizeVect.x % 2 == 0)
                {
                    newPos.x += spacing / 2;
                }
                if (gridSizeVect.y % 2 == 0)
                {
                    newPos.y += spacing / 2;
                }
                spaceLocations[i, j] = newPos;

                
                //set blank tile
                if (y == gridSizeVect.x * gridSizeVect.y - 1)
                {
                    currentBlankSpaceVec = new Vector2Int(i,j);
                    templateImage.gameObject.SetActive(false);
                    return;
                }

                
                //move the tile
                RectTransform trans = peices[y].GetComponent<RectTransform>();
                trans.localPosition = newPos;
                float pieceSize = width / gridSizeVect.x;
                trans.sizeDelta = new Vector2(spacing, spacing);
                
                
                //move the tile image
                RectTransform imageTransform = trans.GetChild(0).GetChild(0).GetComponent<RectTransform>();
                RawImage image = imageTransform.gameObject.GetComponent<RawImage>();
                image.texture = templateImage.texture;
                //image.SetNativeSize();
                imageTransform.sizeDelta = templateImage.rectTransform.sizeDelta;
                imageTransform.localPosition = -newPos;
                
                
                //peices[y].transform.GetChild(0).GetComponent<TextMeshProUGUI>().text = (y ).ToString();
                
                //Debug.Log($"{newPos}, {i}, {j}, {peices[y]}");

                PuzzlePiece currentPiece = peices[y].GetComponent<PuzzlePiece>();

                grid[i, j] = currentPiece;

                currentPiece.puzzle = this;
                currentPiece.vecLoc.x = i;
                currentPiece.vecLoc.y = j;
                currentPiece.originalVecLoc = currentPiece.vecLoc;
                
                y++;
            }
        }
    }

    public void MovePiece(PuzzlePiece peice, bool automatic = false)
    {
        if (!playable && !automatic) return;
        
        if (!IsPeiceNearBlankSpace(peice.vecLoc)) return;
        
        //Debug.Log("Can move!");

        PuzzlePiece movingPeice = grid[peice.vecLoc.x, peice.vecLoc.y];
        
        Vector2Int tempSpot = movingPeice.vecLoc;
        
        //location space gets moved to empty space
        //movingPeice.transform.localPosition = spaceLocations[currentBlankSpaceVec.x, currentBlankSpaceVec.y];
        movingPeice.MoveThisPeice(spaceLocations[currentBlankSpaceVec.x, currentBlankSpaceVec.y], spaceLocations[tempSpot.x, tempSpot.y]);
        
        movingPeice.vecLoc = new Vector2Int(currentBlankSpaceVec.x, currentBlankSpaceVec.y);
        grid[movingPeice.vecLoc.x, movingPeice.vecLoc.y] = peice;
        
        //empty space gets moved to location space
        currentBlankSpaceVec = tempSpot;
        //Debug.Log($"{movingPeice} moved from {peice.vecLoc} to {movingPeice.vecLoc}. blankSpace moved to {currentBlankSpaceVec}");
        CheckSolution();
    }

    private bool IsPeiceNearBlankSpace(Vector2Int loc)
    {
        float distance = Vector2Int.Distance(currentBlankSpaceVec, loc);
        //Debug.Log(distance);
        if (distance > 1) return false;
        return true;
    }

    public void RandomizePuzzle()
    {
        StopAllCoroutines();
        StartCoroutine(Randomize(randomizationStep));
    }

    private IEnumerator Randomize(int steps)
    {
        playable = false;
        PuzzlePiece lastPiece = null;
        
        for (int i = 0; i < steps; i++)
        {
            //get current blank space
        
            //get peices next to blank space
            List<PuzzlePiece> nearPeices = new List<PuzzlePiece>();
            
            //top, y is below gridsize - 1
            if (currentBlankSpaceVec.y < gridSizeVect.y - 1)
            {
                nearPeices.Add(grid[currentBlankSpaceVec.x, currentBlankSpaceVec.y + 1]);
            }
            //bottom, y is 1 or above
            if (currentBlankSpaceVec.y > 0)
            {
                nearPeices.Add(grid[currentBlankSpaceVec.x, currentBlankSpaceVec.y - 1]);
            }
            
            //left, x is 1 or above
            if (currentBlankSpaceVec.x > 0)
            {
                nearPeices.Add(grid[currentBlankSpaceVec.x - 1, currentBlankSpaceVec.y]);
            }
            
            //right, x is below gridSize - 1
            if (currentBlankSpaceVec.x < gridSizeVect.x - 1)
            {
                nearPeices.Add(grid[currentBlankSpaceVec.x + 1, currentBlankSpaceVec.y]);
            }

            foreach (var piece in nearPeices)
            {
                if (piece == lastPiece)
                {
                    nearPeices.Remove(piece);
                    break;
                }
            }
            
            //choose one randomly

            int choice = Random.Range(0, nearPeices.Count);

            lastPiece = grid[nearPeices[choice].vecLoc.x, nearPeices[choice].vecLoc.y];

            //move it
            MovePiece(lastPiece, true);
            
            //repeat
            yield return new WaitForSeconds(randomizeStepTime);
        }

        playable = true;
    }

    public void CheckSolution()
    {
        foreach (var peice in grid)
        {
            if (peice.vecLoc != peice.originalVecLoc)
            {
                //Debug.Log("Its wrong!");
                return;
            }
        }
        Debug.Log("Its right!");
        playable = false;
    }
}