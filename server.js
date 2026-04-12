'use strict';

const express = require('express');

// Constants
const PORT = process.env.PORT || 3001;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  res.send('Hello FS2026 DevOps Course von kolatben!');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
