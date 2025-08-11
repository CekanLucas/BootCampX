--! Instruction List each assignment with the total number of assistance requests with it


SELECT assignments.id, assignments.name, day, chapter, name, 
  COUNT(assistance_requests) AS total_request 
FROM assignments

JOIN assistance_requests ON assignments.id = assignment_id

GROUP BY assignments.id

ORDER By total_request DESC

LIMIT 5;

-- id  |       name       | day | chapter |       name       | total_request 
-------+------------------+-----+---------+------------------+---------------
-- 424 | Ullam cumque     |  51 |      12 | Ullam cumque     |           143
-- 423 | Culpa esse sint  |  51 |      11 | Culpa esse sint  |           113
--  45 | Quia quasi       |   5 |       7 | Quia quasi       |            86
--  50 | A rerum          |   6 |       5 | A rerum          |            83
-- 141 | Illo error dolor |  17 |       9 | Illo error dolor |            82