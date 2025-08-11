--! We need to be able to see the average duration 
--! of a single assistance request for each cohort

SELECT cohorts.name, AVG(completed_at - started_at) 
AS average_assistance_request_duration
FROM assistance_requests

JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id

GROUP BY cohorts.name
LIMIT 5;