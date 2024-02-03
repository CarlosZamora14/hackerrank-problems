SELECT c.company_code,
       c.founder,
       lm.cnt_lm,
       sm.cnt_sm,
       m.cnt_m,
       e.cnt_e
FROM   company c
       JOIN (SELECT company_code,
                    COUNT(DISTINCT lead_manager_code) cnt_lm
             FROM   lead_manager
             GROUP  BY company_code) lm
         ON c.company_code = lm.company_code
       JOIN (SELECT company_code,
                    COUNT(DISTINCT senior_manager_code) cnt_sm
             FROM   senior_manager
             GROUP  BY company_code) sm
         ON lm.company_code = sm.company_code
       JOIN (SELECT company_code,
                    COUNT(DISTINCT manager_code) cnt_m
             FROM   manager
             GROUP  BY company_code) m
         ON sm.company_code = m.company_code
       JOIN (SELECT company_code,
                    COUNT(DISTINCT employee_code) cnt_e
             FROM   employee
             GROUP  BY company_code) e
         ON m.company_code = e.company_code
ORDER  BY c.company_code ASC;