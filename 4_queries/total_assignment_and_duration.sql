--? Get each day with the total number of assignments and 
--? the total duration of the assignments

SELECT day, 
  COUNT(assignments.id) AS number_of_assignments,
  SUM(duration) AS duration
FROM assignments

GROUP BY day

ORDER BY day

LIMIT 5;

--  day | number_of_assignments | duration 
-- -----+-----------------------+----------
--    1 |                    11 |      590
--    2 |                     9 |      585
--    3 |                     9 |      425
--    4 |                     9 |      380
--    5 |                     7 |      405