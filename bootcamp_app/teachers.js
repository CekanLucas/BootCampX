const { Pool } = require('pg');
const args = process.argv.slice(2);
console.log(args)
const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});




let query = {
  text:
`
SELECT DISTINCT(teachers.name) AS teacher, cohorts.name AS cohort
FROM teachers 
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id

WHERE cohorts.name LIKE $1  

ORDER BY teacher;
`,
 values: [ `%${args[0]}%` ] 
}

pool.query(query)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.teacher} of cohort ${user.cohort} had managed an assistance request`);
  })
});