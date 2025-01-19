const express = require('express');
const { check, validationResult } = require('express-validator');
const gravatar = require('gravatar');
const bcrypt = require('bcryptjs');
const config = require('config');
const jwt = require('jsonwebtoken');
const router = express.Router();
const { pool } = require('../../config/db');

// @route       POST api/users
// @desc        Register a user
// @access      public
router.post(
  '/',
  [
    check('name', 'Name is required').not().isEmpty(),
    check('email', 'Valid email is required').isEmail(),
    check('password', 'Password is required min 6 characters').isLength({
      min: 6,
    }),
  ],
  async (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }

    try {
      const { name, email, password } = req.body;

      // Check if user exists
      const userCheck = await pool.query(
        'SELECT * FROM users WHERE email = $1',
        [email]
      );

      if (userCheck.rows.length > 0) {
        return res.status(400).json({ errors: [{ msg: 'User already exists' }] });
      }

      // Get user's gravatar
      const avatar = gravatar.url(email, {
        s: '200',
        r: 'pg',
        d: 'mm',
      });

      // Encrypt password
      const hashedPassword = await encrypt_password(password);

      // Insert user into database
      const result = await pool.query(
        'INSERT INTO users (name, email, password, avatar) VALUES ($1, $2, $3, $4) RETURNING id',
        [name, email, hashedPassword, avatar]
      );

      const payload = {
        user: {
          id: result.rows[0].id,
        },
      };

      jwt.sign(
        payload,
        config.get('jwtSecret'),
        { expiresIn: 360000 },
        (err, token) => {
          if (err) throw err;
          res.json({ token });
        }
      );
    } catch (err) {
      console.error(err.message);
      res.status(500).json('Server error: ' + err.message);
    }
  }
);

const encrypt_password = async (password) => {
  const salt = await bcrypt.genSalt(10);
  const hashed = await bcrypt.hash(password, salt);
  return hashed;
};

module.exports = router;