SELECT cont.contest_id,
       cont.hacker_id,
       cont.name,
       SUM(ss.total_submissions)          sts,
       SUM(ss.total_accepted_submissions) stas,
       SUM(vs.total_views)                stv,
       SUM(vs.total_unique_views)         stuv
FROM   (SELECT DISTINCT contests.contest_id,
                        contests.hacker_id,
                        contests.name,
                        colleges.college_id,
                        challenges.challenge_id
        FROM   contests
               JOIN colleges
                 ON contests.contest_id = colleges.contest_id
               JOIN challenges
                 ON colleges.college_id = challenges.college_id) cont
       LEFT JOIN (SELECT challenge_id,
                         SUM(total_views)        total_views,
                         SUM(total_unique_views) total_unique_views
                  FROM   view_stats
                  GROUP  BY challenge_id) vs
              ON cont.challenge_id = vs.challenge_id
       LEFT JOIN (SELECT challenge_id,
                         SUM(total_submissions)          total_submissions,
                         SUM(total_accepted_submissions)
                         total_accepted_submissions
                  FROM   submission_stats
                  GROUP  BY challenge_id) ss
              ON cont.challenge_id = ss.challenge_id
GROUP  BY cont.contest_id,
          cont.hacker_id,
          cont.name
HAVING NOT ( stv = 0
             AND stuv = 0
             AND sts = 0
             AND stas = 0 )
ORDER  BY cont.contest_id;