SELECT city,
       LENGTH(city)
FROM   station
WHERE  id = (SELECT id
             FROM   station
             ORDER  BY LENGTH(city) ASC,
                       city ASC
             LIMIT  1)
        OR id = (SELECT id
                 FROM   station
                 ORDER  BY LENGTH(city) DESC,
                           city ASC
                 LIMIT  1);