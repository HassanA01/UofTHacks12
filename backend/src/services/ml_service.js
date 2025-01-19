const axios = require('axios');


// Future Predictions Endpoint
app.get('/future-predictions', async (req, res) => {
    try {
        // Ensure the Python server is reachable
        const response = await axios.get('http://localhost:5001/predict'); // Note the HTTP method is 'GET'
        res.json(response.data);
    } catch (err) {
        console.error(err.message);
        res.status(500).send('Error fetching predictions');
    }
});

app.get('/insights', async (req, res) => {
    try {
        const response = await axios.get('http://localhost:5001/insights');
        res.json(response.data);
    } catch (err) {
        console.error(err.message);
        res.status(500).send('Error fetching insights');
    }
});
