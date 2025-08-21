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
SELECT students.id AS id, students.name AS name, cohorts.name AS cohort
FROM students
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE $2
LIMIT $1;
`,
 values: [ args[1], `%${args[0]}%` ] 
}

pool.query(query)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort} cohort`);
  })
});
