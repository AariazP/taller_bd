SELECT * FROM LOCATIONS WHERE state_province IS NULL AND (
    city LIKE '%a%a%'
    OR
    city LIKE '%e%e%'
    OR
    city LIKE '%i%i%'
    OR
    city LIKE '%o%o%'
    OR
    city LIKE '%u%u%'
);