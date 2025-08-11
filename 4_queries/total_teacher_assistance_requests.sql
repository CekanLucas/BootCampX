-- Get total assistance_requests per teacher
SELECT name, count(*) AS total_assists
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
GROUP BY name;

/*       name       | total_assists 
--------------------+---------------
 Preston Auer       |           339
 Georgiana Fahey    |          1976
 Waylon Boehm       |          4227
 Talon Gottlieb     |          1645
 Jadyn Bosco        |          2198
 Cheyanne Powlowski |          3732
 Adam Romaguera     |          1398
 Helmer Rodriguez   |          2320
 Roberto Towne      |          2570
 Alessia Zemlak     |          1071
 Rosalyn Raynor     |          4823
    (11 rows) */

SELECT name, count(*) AS total_assists
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY name;

/*      name  | total_assists 
--------------+---------------
 Waylon Boehm |          4227 */