WITH RECURSIVE tbl(pattern) AS
(
       SELECT CAST('* ' AS CHAR(64)) pattern
       UNION
       SELECT CONCAT(pattern, '* ')
       FROM   tbl
       WHERE  LENGTH(pattern) < 20 * 2 )
SELECT   *
FROM     tbl
ORDER BY LENGTH(pattern) DESC;