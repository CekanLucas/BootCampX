Select count(*) FROM students 
  WHERE 
    cohort_id = 1 OR 
    cohort_id = 2 OR 
    cohort_id = 3;

-- thier ans 
SELECT count(id)
FROM students 
WHERE cohort_id IN (1,2,3);
