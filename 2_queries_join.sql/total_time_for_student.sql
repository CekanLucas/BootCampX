-- SELECT name, SUM(duration) as total_duration
-- FROM assignment_submissions JOIN students 
--   ON (students.id = student_id)
-- GROUP BY name
-- ORDER BY name ASC



-- 'Ibrahim Schimmel' id = 186

-- THIER ANSWER
-- SELECT sum(assignment_submissions.duration) as total_duration
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.name = 'Ibrahim Schimmel';


-- QUERIES FOR TOTAL DURATION PER COHORT
SELECT cohort_id AS cohort, SUM(duration) as total_duration
FROM assignment_submissions JOIN students 
  ON (students.id = student_id)
GROUP BY cohort_id
ORDER BY cohort_id ASC
