
SELECT DISTINCT(r.region_id), r.region_name FROM EMPLOYEES e
    JOIN JOBS j ON e.job_id=j.job_id
    JOIN LOCATIONS l ON e.location_id = l.location_id
    JOIN COUNTRIES c ON l.country_id = c.country_id
    JOIN REGIONS r ON r.region_id = c.region_id
    WHERE job_title="Accountant" OR  job_title="Programmer";
