using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Chainball : MonoBehaviour
{
    public Transform ball;
    public Transform chainBase;
    public List<Transform> chains;
    public float throwDistance;
    public float windupTime = .5f;
    public float throwTime = .5f;
    public float waitTime = 1f;
    public float dragTime = 2f;
    public float attackTimer = 3f;

    public Enemy enemy;
    private Health enemyHealth;

    private bool ballOut = false;

    private Coroutine acr;
    private Transform target;

    private void Awake()
    {
        enemy.AggroEnter += AggroEnterHandler;
        enemy.AggroExit += AggroExitHandler;
        enemyHealth = enemy.GetComponent<Health>();
        enemyHealth.Death += DeathHandler;
    }

    private void Update()
    {
        UpdateChainPos();
        UpdateBallPos();
    }

    private void UpdateBallPos()
    {
        if (ballOut) return;
        ball.position = chainBase.position;
    }

    private void UpdateChainPos()
    {
        if (chains.Count <= 0 || ball == null) return;
        for (var i = 0; i < chains.Count; i++)
        {
            Vector2 pos = Vector2.Lerp(chainBase.position, ball.position, (float)i / chains.Count);
            chains[i].position = pos;
        }
    }

    private void AggroEnterHandler(Transform t)
    {
        Debug.Log("Aggro Entered!");
        target = t;
        if(acr == null)
            acr = StartCoroutine(AttackTimer());
    }

    private void AggroExitHandler()
    {
        StopCoroutine(acr);
    }

    private IEnumerator AttackTimer()
    {
        float timer = 0;
        while (true)
        {
            if (timer >= attackTimer && target != null)
            {
                timer = 0;
                Throw(target.position);
            }

            timer += Time.deltaTime;
            yield return null;
        }
    }
    
    private void Throw(Vector2 pos)
    {
        if (!ballOut)
            StartCoroutine(ThrowBall(pos));
    }
    
    private IEnumerator ThrowBall(Vector2 position)
    {
        ballOut = true;

        Vector2 throwDir = position - (Vector2)chainBase.position;
        throwDir = throwDir.normalized;
        Vector2 throwPos = (Vector2)chainBase.position + throwDir * throwDistance;
        
        //wind up
        float t = 0;
        Vector2 revDir = throwDir * -1;
        Vector2 revPos = (Vector2)chainBase.position + revDir;
        while (t < windupTime)
        {
            t += Time.deltaTime;
            Vector2 pos = Vector2.Lerp(chainBase.position, revPos, t / throwTime);
            ball.position = pos;
            yield return null;
        }
        
        //throw ball
        t = 0;
        while (t < throwTime)
        {
            t += Time.deltaTime;
            Vector2 pos = Vector2.Lerp(revPos, throwPos, t / throwTime);
            ball.position = pos;
            yield return null;
        }

        //wait
        t = 0;
        while (t < waitTime)
        {
            t += Time.deltaTime;
            yield return null;
        }
        
        //drag ball
        t = 0;
        while (t < dragTime)
        {
            t += Time.deltaTime;
            Vector2 pos = Vector2.Lerp(throwPos, chainBase.position, t / dragTime);
            ball.position = pos;
            yield return null;
        }

        ballOut = false;
    }
    
    private void DeathHandler()
    {
        AggroExitHandler();
        StopAllCoroutines();
        ballOut = true;
        foreach (var chain in chains)
        {
            chain.gameObject.SetActive(false);
        }
        StartCoroutine(DropBall());
    }

    private IEnumerator DropBall()
    {
        float t = 0;
        Vector2 ballStartPos = ball.position;
        Vector2 dropPos = (Vector2) ball.position + Vector2.down * 1f;
        yield return new WaitForSeconds(.2f);
        while (t < .5f)
        {
            t += Time.deltaTime;
            Vector2 pos = Vector2.Lerp(ballStartPos, dropPos, (t / .5f)*(t/ .5f));
            ball.position = pos;
            yield return null;
        }
    }
}
