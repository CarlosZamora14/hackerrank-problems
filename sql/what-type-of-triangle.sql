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

1 2 3 4 5, 5 / 2 = 2.5 -> 3, 6/2 -> 3

1 2 3 4 5 6, 6/2 -> 3, CEIL(7/2)