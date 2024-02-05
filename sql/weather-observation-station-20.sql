SELECT ROUND(AVG(t.lat_n), 4)
FROM   (SELECT *
        FROM   (SELECT COUNT(*) total
                FROM   station) t1
               RIGHT JOIN (SELECT ROW_NUMBER()
                                    OVER (
                                      ORDER BY lat_n) rn,
                                  lat_n
                           FROM   station) t2
                       ON t2.rn = t2.rn) t
WHERE  t.rn = CEIL(t.total / 2)
        OR t.rn = CEIL(( t.total + 1 ) / 2);