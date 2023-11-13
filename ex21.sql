SELECT r.region_id, region_name FROM REGIONS r
    JOIN COUNTRIES c ON c.region_id=r.region_id
    JOIN LOCATIONS l ON c.country_id=l.country_id
    JOIN DEPARTMENTS d ON l.location_id = d.location_id
    WHERE(    
        SELECT COUNT(r.region_id) FROM REGIONS r2
        JOIN COUNTRIES c ON c.region_id=r.region_id
        JOIN LOCATIONS l ON c.country_id=l.country_id
        JOIN DEPARTMENTS d ON l.location_id = d.location_id WHERE r2.region_id = r.region_id
    ) < 3;    

    