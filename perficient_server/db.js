const Pool = require('pg').Pool;

const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  port: 5432,
  database: 'employee_skills'
});

module.exports = pool;