const express = require('express');
const { connectDB } = require('./config/db');
const app = express();

connectDB();
app.use(express.json({ extended: false }));

const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('API Running...');
});

app.use('/api/users', require('./routes/api/users'));
app.use('/api/auth', require('./routes/api/auth'));
app.use('/api/goals', require('./routes/api/goals'));
// app.use('/api/profile', require('./routes/api/profile'));
// app.use('/api/posts', require('./routes/api/posts'));


app.listen(PORT, () => {
  console.log('listening on port ' + PORT);
});