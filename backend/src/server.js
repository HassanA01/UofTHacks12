const express = require('express');
const cors = require('cors'); 
const { connectDB } = require('./config/db');

const app = express();

connectDB();

app.use(express.json({ extended: false }));

// Enable CORS
app.use(cors({
  origin: 'http://localhost:3000', // Allow requests from this origin
  methods: ['GET', 'POST', 'PUT', 'DELETE'], // Allowed HTTP methods
  credentials: true, // Allow credentials (e.g., cookies, authorization headers)
}));

// Define routes
app.get('/', (req, res) => {
  res.send('API Running...');
});
app.use('/api/users', require('./routes/api/users'));
app.use('/api/auth', require('./routes/api/auth'));
app.use('/api/goals', require('./routes/api/goals'));
// app.use('/api/profile', require('./routes/api/profile'));
// app.use('/api/posts', require('./routes/api/posts'));

// Start the server
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log('Server running on port ' + PORT);
});
