SELECT e.employee_id, e.first_name, e.last_name, js.date_start, js.end_date FROM EMPLOYEES e JOIN JOB_HISTORY js 
ON js.employee_id=e.employee_id WHERE 
        (
            date_start LIKE '%-01-%'
                    OR
            date_start LIKE '%-02-%'
                    OR
            date_start LIKE '%-03-%'
                    OR
            date_start LIKE '%-04-%'
                    OR
            date_start LIKE '%-05-%'
                    OR
            date_start LIKE '%-05-%'
        ) 
            AND
        (
            (e.first_name NOT LIKE 'a'
                    AND
            e.last_name NOT LIKE 'a')
                    OR
            (e.first_name NOT LIKE 'E'
                    AND
            e.last_name NOT LIKE 'e')
                    OR
            (e.first_name NOT LIKE 'i'
                    AND
            e.last_name NOT LIKE 'i')
                    OR
            (e.first_name NOT LIKE 'o'
                        AND
                e.last_name NOT LIKE 'o')
                        OR
                (e.first_name NOT LIKE 'u'
                        AND
                e.last_name NOT LIKE 'u')
                );