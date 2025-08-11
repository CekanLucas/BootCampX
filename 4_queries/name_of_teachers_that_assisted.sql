--? get the name of all teachers that performed an assistance
--? request during a cohort

SELECT DISTINCT teachers.name AS teacher, cohorts.name as cohort
FROM teachers

JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id 

WHERE cohorts.name = 'JUL02'

ORDER BY teacher

LIMIT 5;

--*                teacher       | cohort 
--*          --------------------+--------
--*           Cheyanne Powlowski | JUL02
--*           Georgiana Fahey    | JUL02
--*           Helmer Rodriguez   | JUL02
--*           Jadyn Bosco        | JUL02