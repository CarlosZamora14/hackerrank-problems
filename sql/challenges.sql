CREATE TABLE tbl
  SELECT h.hacker_id id,
         h.name      name,
         COUNT(*)    total_challenges
  FROM   hackers h
         JOIN challenges c USING (hacker_id)
  GROUP  BY id,
            name
  ORDER  BY total_challenges DESC,
            id ASC;

SELECT *
FROM   tbl
WHERE  total_challenges = (SELECT MAX(total_challenges)
                           FROM   tbl)
        OR total_challenges NOT IN (SELECT total_challenges
                                    FROM   tbl
                                    GROUP  BY total_challenges
                                    HAVING COUNT(*) > 1);