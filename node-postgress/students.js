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
const query = {
  text:
    `
SELECT students.id AS id, students.name AS name, cohorts.name AS cohort
FROM students
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name ILIKE $2
LIMIT $1;
`,
  values: [args[1], `%${args[0]}%`]
}

pool.query(query)
  .then(res => {
    const rows = res.rows;
    if (rows && rows.length === 0)
      console.error("no results found in database")
    rows.forEach(user => {
      console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort} cohort`);
    })
  })
  .catch(err => console.error('query error', err.stack))
  .finally(() => pool.end());