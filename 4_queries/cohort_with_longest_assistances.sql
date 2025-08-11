
SELECT cohorts.name, AVG(completed_at - started_at) 
AS average_assistance_request_duration
FROM assistance_requests

JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id

GROUP BY cohorts.name

ORDER BY average_assistance_request_duration DESC

LIMIT 5; --* limit to 1 to have longest average duration of assistance

/*  name  | average_assistance_request_duration 
-------+-------------------------------------
 MAR12 | 00:15:44.556041
 APR09 | 00:15:39.425113
 OCT22 | 00:15:22.121838
 NOV19 | 00:14:34.16273
 AUG27 | 00:14:15.572792
(5 rows) */