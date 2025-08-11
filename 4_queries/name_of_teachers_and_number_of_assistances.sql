--? We need to know which teachers actually assisted students during a cohort,
--? and how many assistance they did for that cohort

SELECT DISTINCT 
  teachers.name AS teacher, 
  cohorts.name as cohort,
  COUNT(assistance_requests) as total_assists
FROM teachers

JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id 

WHERE cohorts.name = 'JUL02'

GROUP BY teachers.name, cohorts.name

ORDER BY teacher

LIMIT 5;

--*       teacher       | cohort | total_assists 
--* --------------------+--------+---------------
--*  Cheyanne Powlowski | JUL02  |           336
--*  Georgiana Fahey    | JUL02  |           158
--*  Helmer Rodriguez   | JUL02  |           157
--*  Jadyn Bosco        | JUL02  |           177
--*  Roberto Towne      | JUL02  |           170