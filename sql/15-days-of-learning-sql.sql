SET @row_number := 0;
SET @current_id := NULL;

SET @row_number1 := 0;
SET @current_id1 := NULL;

SET @is_max := 0;
SET @current_day := NULL;

SELECT t5.submission_date,
       t6.count,
       t5.hacker_id,
       t5.name
FROM   (SELECT *
        FROM   (SELECT hacker_id,
                       name,
                       submission_date,
                       number_submissions,
                       @is_max := IF(@current_day IS NULL
                                      OR @current_day != DAY(submission_date), 1
                                  , 0)
                       is_max,
                       @current_day := DAY(submission_date)
                       cd
                FROM   (SELECT t3.hacker_id,
                               t3.name,
                               t3.submission_date,
                               t3.number_submissions
                        FROM   (SELECT *
                                FROM   (SELECT hacker_id,
                                               submission_date,
                                               COUNT(*) number_submissions
                                        FROM   submissions
                                        GROUP  BY hacker_id,
                                                  submission_date) t2
                                       JOIN hackers h USING(hacker_id)
                                ORDER  BY t2.submission_date,
                                          t2.number_submissions DESC,
                                          t2.hacker_id) t3
                        ORDER  BY t3.submission_date,
                                  t3.number_submissions DESC,
                                  t3.hacker_id) t4) tt4
        WHERE  is_max = 1) t5
       JOIN (SELECT submission_date,
                    COUNT(*) count
             FROM   (SELECT *
                     FROM   (SELECT @row_number1 := IF(@current_id1 IS NULL
                                                        OR
                                    @current_id1 = hacker_id,
                                                    @row_number1 + 1, 1) rn
                                            ,
                                    @current_id1 := hacker_id
                                            hacker_id,
                                    submission_date,
                                    number_submissions
                             FROM   (SELECT hacker_id,
                                            submission_date,
                                            COUNT(*) number_submissions
                                     FROM   submissions
                                     GROUP  BY hacker_id,
                                               submission_date) ttt1) tt1
                     WHERE  DAY(submission_date) = rn
                     ORDER  BY hacker_id,
                               submission_date) tbl
             GROUP  BY tbl.submission_date) t6
         ON t5.submission_date = t6.submission_date
ORDER  BY t5.submission_date;