const { Pool } = require('pg');

const pool = new Pool({
  host: 'localhost',
  database: 'bootcampx'
});
let cohName = process.argv[2];
let listLimit = process.argv[3];
pool.query(`
SELECT students.id, students.name, cohorts.name as cname
FROM students
JOIN cohorts
on cohort_id = cohorts.id
where cohorts.name like '%${cohName}%'
LIMIT ${listLimit};
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.id} and was in the ${user.cname} cohort`);
  })
})
.catch(err => console.error('query error', err.stack));