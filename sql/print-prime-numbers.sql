WITH RECURSIVE numbers(n) AS
(
       SELECT 2
       UNION
       SELECT n + 1
       FROM   numbers
       WHERE  n < 1000 ), primes(num) AS
(
         SELECT   number
         FROM     (
                         SELECT t1.n number,
                                t2.n divisor
                         FROM   numbers t1,
                                numbers t2
                         WHERE  t1.n % t2.n = 0 ) t
         GROUP BY number
         HAVING   COUNT(*) = 1 ), answer(ans) AS
(
       SELECT @primes_concat :=
       IF(@primes_concat IS NULL, num, CONCAT(@primes_concat, '&', num)) ans FROM primes )
SELECT   ans
FROM     answer
ORDER BY LENGTH(ans) DESC LIMIT 1;