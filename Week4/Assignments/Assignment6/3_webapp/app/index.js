const express = require('express');
const { Pool } = require('pg');
const app = express();

const pool = new Pool({
    user: 'postgres',
    host: 'db', // name of the service in docker-compose
    database: 'sampledb',
    password: 'postgres',
    port: 5432
});

app.get('/', async (req, res) => {
    const result = await pool.query('SELECT NOW()');
    res.send(`Database time: ${result.rows[0].now}`);
});

app.listen(3000, () => console.log('App running on port 3000'));
