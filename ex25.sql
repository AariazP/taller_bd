SELECT d.departament_name, c.country_name
    FROM DEPARTMENTS d
    JOIN LOCATIONS l ON d.location_id=l.location_id
    JOIN COUNTRIES c ON l.country_id = c.country_id
    JOIN EMPLOYEES e ON d.departament_id = e.departament_id
    WHERE(SELECT AVG(e.salary) FROM EMPLOYEES)>5000;
    