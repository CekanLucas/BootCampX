-- Get total assistance_requests per student
SELECT name, count(*) AS total_assists
FROM students
JOIN assistance_requests ON students.id = student_id
GROUP BY name
LIMIT 5; -- to limit output

/*       name      | total_assists 
------------------+---------------
 Chasity Braun    |           138
 Eliezer Pfeffer  |           133
 Mohammad Strosin |           136
 Seth Gibson      |           132
 Elda McClure     |            92 */

SELECT name, count(*) AS total_assists
FROM students
JOIN assistance_requests ON students.id = student_id
WHERE name = 'Elliot Dickinson'
GROUP BY name;

/*  Elliot Dickinson |           138 */