const pool = require('../config/db');

// Find user by email
exports.findUserByEmail = async (email) => {
  const query = 'SELECT * FROM users WHERE email = $1';
  const { rows } = await pool.query(query, [email]);
  return rows[0];
};

// Find user by ID
exports.findUserById = async (id) => {
  const query = 'SELECT id, email FROM users WHERE id = $1';
  const { rows } = await pool.query(query, [id]);
  return rows[0];
};

// Create new user
exports.createUser = async (email, hashedPassword) => {
  const query = `
    INSERT INTO users (email, password_hash)
    VALUES ($1, $2)
    RETURNING id, email;
  `;
  const { rows } = await pool.query(query, [email, hashedPassword]);
  return rows[0];
};
