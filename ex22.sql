SELECT * 
    FROM EMPLOYEES e
    JOIN JOB_HISTORY jh ON jh.employee_id=e.employee_id
    WHERE(
        
        SELECT COUNT(e.employee_id) FROM EMPLOYEES e2
        WHERE e.employee_id=e2.employee_id

    )<2