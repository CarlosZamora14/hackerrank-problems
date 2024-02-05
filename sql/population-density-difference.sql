SELECT (SELECT MAX(population)
        FROM   city) - (SELECT MIX(population)
                        FROM   city);