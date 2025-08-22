const { Pool } = require('pg');
require('dotenv').config()

const args = process.argv.slice(2);

const pool = new Pool({
  user: process.env.DB_USER || 'vagrant',
  password: process.env.DB_PASSWORD || '123',
  host: process.env.DB_HOST || 'localhost',
  database: process.env.DB_NAME || 'bootcampx'
});

// note ILIKE is case insensitive search
let query = {
  text:
    `
SELECT DISTINCT(teachers.name) AS teacher, cohorts.name AS cohort
FROM teachers 
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id

WHERE cohorts.name ILIKE $1  

ORDER BY teacher;
`,
  values: [`%${args[0]}%`]
}

pool.query(query)
  .then(res => {
    const rows = res.rows;
    if (rows && rows.length === 0)
      console.error("no results found in database")
    res.rows.forEach(user => {
      console.log(`${user.teacher} of cohort ${user.cohort} had managed an assistance request`);
    })
  })
  .catch(err => console.error('query error', err.stack))
  .finally(() => pool.end());