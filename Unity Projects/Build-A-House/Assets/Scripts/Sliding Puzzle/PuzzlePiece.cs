using System.Collections;
using UnityEngine;
using UnityEngine.UI;

[System.Serializable]
public class PuzzlePiece : MonoBehaviour
{
    public Image image;

    public Vector2Int vecLoc;

    public Vector2Int originalVecLoc;

    public SlidingPuzzle puzzle;

    public float moveTime = 1f;
    public AnimationCurve moveCurve = AnimationCurve.EaseInOut(0, 0, 1, 1);

    private void Awake()
    {
        GetComponent<Button>().onClick.AddListener(MovePeice);
    }

    public void MovePeice()
    {
        puzzle.MovePiece(this);
    }

    public void MoveThisPeice(Vector3 newPos, Vector3 oldPos)
    {
        StopAllCoroutines();
        StartCoroutine(Move(newPos, oldPos));
    }

    private IEnumerator Move(Vector3 newPos, Vector3 oldPos)
    {
        float timer = 0;
        
        while (timer < moveTime)
        {
            float normalized = timer / moveTime;
            
            transform.localPosition = Vector3.LerpUnclamped(oldPos, newPos, moveCurve.Evaluate(normalized));
            timer += Time.deltaTime;
            yield return null;
        }

        transform.localPosition = newPos;
    }
}