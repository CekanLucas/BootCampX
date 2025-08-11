SELECT cohorts.name AS cohort,
SUM(completed_at - started_at) AS "Total Duration"
FROM assistance_requests

JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id

GROUP BY cohort

ORDER BY "Total Duration"

LIMIT 5;

/*cohort | Total Duration 
--------+----------------
 JUL30  | 390:35:20
 AUG27  | 398:19:00
 JUL02  | 453:50:30
 NOV19  | 462:34:40
 MAY07  | 480:10:55 */