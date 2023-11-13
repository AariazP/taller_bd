SELECT e.employee_id, e.first_name nombre_empleado, e.last_name apellido_empleado, m.first_name nombre_jefe
    FROM EMPLOYEES e
    JOIN EMPLOYEES m ON e.manager_id = m.employee_id
    JOIN DEPARTMENTS d ON d.departament_id = e.departament_id
    WHERE MONTH(e.hire_date) = 10 AND YEAR(e.hire_date)=2016;