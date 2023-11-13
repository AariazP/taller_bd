SELECT e.first_name nombre_empleado, e.last_name apellido_empleado, m.first_name nombre_jefe,
    m.last_name apellido_jefe FROM EMPLOYEES e
    JOIN EMPLOYEES m ON e.manager_id=m.employee_id;