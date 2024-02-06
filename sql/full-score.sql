SELECT id,
       name
FROM   (SELECT h.hacker_id id,
               h.name      name,
               s.score     score,
               d.score     max_score
        FROM   hackers h
               JOIN submissions s USING(hacker_id)
               JOIN challenges c USING(challenge_id)
               JOIN difficulty d USING (difficulty_level)
        WHERE  s.score = d.score) t
GROUP  BY id,
          name
HAVING COUNT(*) > 1
ORDER  BY Count(*) DESC,
          id ASC;