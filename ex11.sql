SELECT e.employee_id, e.first_name, e.last_name, j.job_title, d.departament_name
    FROM employees e 
    JOIN JOBS j ON e.job_id=j.job_id 
    JOIN DEPARTMENTS d ON d.departament_id=e.departament_id ;