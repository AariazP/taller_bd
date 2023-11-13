SELECT *
    FROM EMPLOYEES e
    JOIN LOCATIONS l ON l.location_id = e.location_id
    JOIN COUNTRIES c ON c.country_id = l.country_id
    JOIN REGIONS r ON r.region_id = c.region_id 
    WHERE salary<8000;