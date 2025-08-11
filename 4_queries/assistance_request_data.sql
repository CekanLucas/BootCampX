SELECT 
  students.name             AS student, 
  teachers.name             AS teacher,
  assignments.name          AS assignment,
  completed_at - started_at AS duration

FROM assistance_requests

JOIN students     ON students.id      = student_id
JOIN teachers     ON teachers.id      = teacher_id
JOIN assignments  ON assignments.id   = assignment_id

LIMIT 5;

/*     student    |     teacher     |       assignment       | duration 
-----------------+------------------+-------------------------+----------
 Armand Hilll    | Helmer Rodriguez | Adipisci est            | 00:07:20
 Armand Hilll    | Rosalyn Raynor   | Omnis iusto             | 00:06:40
 Stephanie Wolff | Helmer Rodriguez | Incidunt eos voluptatum | 00:04:00
 Stephanie Wolff | Rosalyn Raynor   | Aliquam tempora         | 00:16:40
 Stephanie Wolff | Roberto Towne    | Voluptates cumque       | 00:04:00 */