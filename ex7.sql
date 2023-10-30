SELECT e.employee_id, e.first_name, e.last_name, d.departament_id, d.departament_name, e.salary
    FROM EMPLOYEES e JOIN DEPARTMENTS d on e.departament_id = d.departament_id 
    WHERE (e.first_name LIKE 'A %'
            OR
        e.first_name LIKE 'E %'
            OR
        e.first_name LIKE 'I %'
            OR
        e.first_name LIKE 'O %'
            OR
        e.first_name LIKE 'U %'
            OR  
        e.salary>6000);