SELECT t.id,
       p.age,
       t.coins_needed,
       t.power
FROM   (SELECT w.id,
               a.*
        FROM   wands w
               JOIN (SELECT MIN(coins_needed) coins_needed,
                            code,
                            power
                     FROM   wands
                     GROUP  BY code,
                               power) a
                 ON w.coins_needed = a.coins_needed
                    AND w.code = a.code) t
       JOIN wands_property p USING(code)
WHERE  p.is_evil = 0
ORDER  BY t.power DESC,
          p.age DESC;