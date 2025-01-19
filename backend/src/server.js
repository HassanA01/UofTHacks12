const express = require('express');
const cors = require('cors'); 
const { connectDB } = require('./config/db');
const axios = require('axios');


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

app.post('/future-predictions', async (req, res) => {
    try {
        // Request to Python Flask server for predictions
        const response = await axios.post('http://localhost:5001/predict', req.body); // Forward the request body if needed
        res.json(response.data); // Send the predictions back to the client
    } catch (err) {
        console.error(err.message);
        res.status(500).send('Error fetching predictions');
    }
});

  app.get('/insights', async (req, res) => {
    try {
      // Request to Python Flask server for insights
      const response = await axios.get('http://localhost:5001/insights'); // Ensure Flask server is running
      res.json(response.data); // Send the insights back to the client
    } catch (err) {
      console.error(err.message);
      res.status(500).send('Error fetching insights');
    }
  });
// Start the server
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log('Server running on port ' + PORT);
});
