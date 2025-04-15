const express = require('express');
const { Pool } = require('pg');

const app = express();
app.use(express.json());

const pool = new Pool({
  host: process.env.DB_HOST,
  database: process.env.DB_NAME,
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
});

app.post('/submit', async (req, res) => {
  const { name } = req.body;
  try {
    await pool.query('CREATE TABLE IF NOT EXISTS users (id SERIAL PRIMARY KEY, name TEXT);');
    await pool.query('INSERT INTO users (name) VALUES ($1);', [name]);
    res.json({ message: 'Data inserted' });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Database error' });
  }
});

app.listen(5000, () => console.log('Backend server running on port 5000'));
