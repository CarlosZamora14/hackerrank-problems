SELECT h.hacker_id,
       h.name,
       SUM(t.score) total_score
FROM   (SELECT hacker_id,
               challenge_id,
               MAX(score) score
        FROM   submissions
        GROUP  BY hacker_id,
                  challenge_id) t
       JOIN hackers h USING(hacker_id)
GROUP  BY h.hacker_id,
          h.name
HAVING total_score != 0
ORDER  BY total_score DESC,
          h.hacker_id ASC;