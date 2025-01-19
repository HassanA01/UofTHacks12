const { Pool } = require('pg');
const config = require('config');

const pool = new Pool({
  user: config.get('pgUser'),
  host: config.get('pgHost'),
  database: config.get('pgDatabase'),
  password: config.get('pgPassword'),
  port: config.get('pgPort')
});

const connectDB = async () => {
  try {
    await pool.connect();
  } catch (err) {
    console.error('Error connecting to PostgreSQL:', err.message);
    process.exit(1);
  }
};

module.exports = { connectDB, pool };
