SELECT t1.name Doctor,
       t2.name Professor,
       t3.name Singer,
       t4.name Actor
FROM   (SELECT ROW_NUMBER()
                 OVER (
                   ORDER BY name) rn,
               name
        FROM   occupations
        WHERE  occupation = 'Doctor') t1
       RIGHT JOIN (SELECT ROW_NUMBER()
                            OVER (
                              ORDER BY name) rn,
                          name
                   FROM   occupations
                   WHERE  occupation = 'Professor') t2
               ON t1.rn = t2.rn
       LEFT JOIN (SELECT ROW_NUMBER()
                           OVER (
                             ORDER BY name) rn,
                         name
                  FROM   occupations
                  WHERE  occupation = 'Singer') t3
              ON t2.rn = t3.rn
       LEFT JOIN (SELECT ROW_NUMBER()
                           OVER (
                             ORDER BY name) rn,
                         name
                  FROM   occupations
                  WHERE  occupation = 'Actor') t4
              ON t3.rn = t4.rn;