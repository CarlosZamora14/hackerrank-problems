CREATE TABLE fn
  SELECT functions.*,
         ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) rn FROM functions;

SELECT DISTINCT CASE
                  WHEN f1.x <= f1.y THEN f1.x
                  ELSE f2.x
                END x,
                CASE
                  WHEN f1.x <= f1.y THEN f1.y
                  ELSE f2.y
                END y
FROM   fn f1
       JOIN fn f2
         ON f1.x = f2.y
            AND f1.y = f2.x
            AND f1.rn != f2.rn
ORDER  BY x;