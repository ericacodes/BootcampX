const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const args = process.argv.slice(2)

pool.query(`
SELECT students.id, students.name AS name, cohorts.name AS cohort
FROM students
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE '%${args[0]}%'
LIMIT ${args[1]};
`)
.then(res => {
  for (const row of res.rows) {
    console.log(`${row.name} has an id of ${row.id} and was in the ${row.cohort} cohort`);
  };
})
.catch(err => console.error('query error', err.stack));