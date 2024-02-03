SELECT t1.n,
       CASE
         WHEN t1.p IS NULL THEN 'Root'
         WHEN t2.count IS NULL THEN 'Leaf'
         ELSE 'Inner'
       END
FROM   (SELECT n,
               p
        FROM   bst) t1
       LEFT JOIN (SELECT p,
                         COUNT(*) count
                  FROM   bst
                  GROUP  BY p) t2
              ON t1.n = t2.p
ORDER  BY t1.n;