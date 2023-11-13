SELECT employee_id FROM JOB_HISTORY j1
    WHERE (SELECT COUNT(job_id) FROM JOB_HISTORY  j2 WHERE j1.employee_id =j2.employee_id) =1
    ORDER BY employee_id ASC ;

    