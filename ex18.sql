SELECT * 
    FROM EMPLOYEES e
    JOIN DEPARTMENTS d ON e.departament_id=d.departament_id
    WHERE first_name REGEXP '[aeiou]{2}' AND departament_name='Sales' LIMIT 3;