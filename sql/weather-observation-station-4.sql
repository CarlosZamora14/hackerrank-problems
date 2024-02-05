SELECT COUNT(*) - (SELECT COUNT(DISTINCT city)
                   FROM   station)
FROM   station;