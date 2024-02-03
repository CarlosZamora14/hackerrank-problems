SELECT CASE
         WHEN GREATEST(a, b, c) >= LEAST(a + b, b + c, c + a) THEN
         'Not A Triangle'
         WHEN a = b
              AND b = c THEN 'Equilateral'
         WHEN a = b
               OR b = c
               OR c = a THEN 'Isosceles'
         ELSE 'Scalene'
       END
FROM   triangles;