SELECT
    *,
    (max_salary - min_salary) as diff
FROM
    jobs
ORDER BY
    diff DESC;