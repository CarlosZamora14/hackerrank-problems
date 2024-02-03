SELECT Count(*) - (SELECT Count(DISTINCT city)
                   FROM   station)
FROM   station;