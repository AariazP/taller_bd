SELECT d.departament_name, COUNT(e.employee_id) AS employee_count
FROM DEPARTMENTS d
JOIN EMPLOYEES e ON d.departament_id = e.departament_id
GROUP BY d.departament_name
ORDER BY employee_count DESC
LIMIT 1;
