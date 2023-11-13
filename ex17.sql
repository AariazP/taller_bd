SELECT DISTINCT(departament_id) FROM EMPLOYEES e
JOIN JOBS j ON e.job_id = j.job_id
WHERE e.salary > 5000 AND j.job_title = "Stock Manager"
AND NOT EXISTS (

    SELECT DISTINCT(departament_id) FROM EMPLOYEES e2
    JOIN JOBS j1 ON e2.job_id = j1.job_id
    WHERE e2.salary > 5000 AND j1.job_title = "Stock Clerk"
    AND e2.departament_id = e.departament_id

);

