const express = require('express');
const { check, validationResult } = require('express-validator');
const router = express.Router();
const { pool } = require('../../config/db');
const auth = require('../../middleware/auth'); // Middleware to validate JWT

// @route       POST api/goals
// @desc        Create a new goal
// @access      Private
router.post(
  '/',
  [
    auth,
    check('goal_name', 'Goal name is required').not().isEmpty(),
    check('target_amount', 'Target amount is required').isNumeric(),
    check('deadline', 'Valid deadline is required').isISO8601(),
  ],
  async (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }

    const { goal_name, target_amount, deadline } = req.body;

    try {
      const user_id = req.user.id; // Extract user_id from JWT token
      const result = await pool.query(
        `INSERT INTO goals (user_id, goal_name, target_amount, deadline)
         VALUES ($1, $2, $3, $4)
         RETURNING *`,
        [user_id, goal_name, target_amount, deadline]
      );

      res.status(201).json(result.rows[0]);
    } catch (err) {
      console.error(err.message);
      res.status(500).send('Server error');
    }
  }
);

// @route       GET api/goals
// @desc        Get all goals for the logged-in user
// @access      Private
router.get('/', auth, async (req, res) => {
  try {
    const user_id = req.user.id; // Extract user_id from JWT token
    const result = await pool.query('SELECT * FROM goals WHERE user_id = $1', [user_id]);

    res.json(result.rows);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
});

// @route       GET api/goals/:id
// @desc        Get a single goal by its ID
// @access      Private
router.get('/:id', auth, async (req, res) => {
  try {
    const user_id = req.user.id; // Extract user_id from JWT token
    const goal_id = req.params.id;

    const result = await pool.query(
      'SELECT * FROM goals WHERE goal_id = $1 AND user_id = $2',
      [goal_id, user_id]
    );

    if (result.rows.length === 0) {
      return res.status(404).json({ msg: 'Goal not found' });
    }

    res.json(result.rows[0]);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
});

// @route       PUT api/goals/:id
// @desc        Update a goal (partial updates supported)
// @access      Private
router.put('/:id', auth, async (req, res) => {
    const { goal_name, target_amount, deadline } = req.body;
    const fields = {};
    
    // Add fields only if they are provided
    if (goal_name !== undefined) fields.goal_name = goal_name;
    if (target_amount !== undefined) fields.target_amount = target_amount;
    if (deadline !== undefined) fields.deadline = `${deadline}::date`; // Explicit date casting
  
    const updates = [];
    const values = [];
  
    // Dynamically build the SET clause with date casting for deadline
    Object.keys(fields).forEach((key, idx) => {
      if (key === 'deadline') {
        updates.push(`${key} = $${idx + 1}::date`); // Cast to date type
      } else {
        updates.push(`${key} = $${idx + 1}`);
      }
      values.push(fields[key].replace('::date', '')); // Remove the cast syntax from the value
    });
  
    if (updates.length === 0) {
      return res.status(400).json({ msg: 'No fields to update' });
    }
  
    try {
      const user_id = req.user.id;
      const goal_id = req.params.id;
  
      values.push(user_id, goal_id);
  
      const query = `
        UPDATE goals 
        SET ${updates.join(', ')}
        WHERE user_id = $${values.length - 1} AND goal_id = $${values.length}
        RETURNING *
      `;
  
      console.log('Query:', query); 
      console.log('Values:', values); 
  
      const result = await pool.query(query, values);
  
      if (result.rows.length === 0) {
        return res.status(404).json({ msg: 'Goal not found' });
      }
  
      res.json(result.rows[0]);
    } catch (err) {
      console.error(err.message);
      res.status(500).send('Server error');
    }
  });
// @route       DELETE api/goals/:id
// @desc        Delete a goal
// @access      Private
router.delete('/:id', auth, async (req, res) => {
  try {
    const user_id = req.user.id; // Extract user_id from JWT token
    const goal_id = req.params.id;

    const result = await pool.query(
      'DELETE FROM goals WHERE goal_id = $1 AND user_id = $2 RETURNING *',
      [goal_id, user_id]
    );

    if (result.rows.length === 0) {
      return res.status(404).json({ msg: 'Goal not found' });
    }

    res.json({ msg: 'Goal deleted', goal: result.rows[0] });
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server error');
  }
});

module.exports = router;
