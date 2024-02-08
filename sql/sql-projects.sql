SET @project_number := 0;

SELECT   MIN(start_date) start_date_p,
         MAX(end_date)   end_date_p
FROM     (
                SELECT @project_number := @project_number + IF(previous_end_date = start_date, 0, 1) project_number,
                       start_date,
                       end_date
                FROM   (
                                SELECT   LAG(end_date, 1) OVER (ORDER BY start_date) previous_end_date,
                                         projects.*
                                FROM     projects
                                ORDER BY start_date ) t1) t2
GROUP BY project_number
ORDER BY DATEDIFF(end_date_p, start_date_p),
         start_date_p;