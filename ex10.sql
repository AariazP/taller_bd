SELECT e.employee_id, e.first_name, e.last_name, js.date_start, js.end_date FROM EMPLOYEES e JOIN JOB_HISTORY js 
ON js.employee_id=e.employee_id WHERE 
        MONTH(js.date_start) BETWEEN 1 AND 6
            AND
        e.first_name REGEXP '^[^AEIOUaeiou]' AND e.last_name REGEXP '^[^AEIOUaeiou]';