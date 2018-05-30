'use strict';

const express = require('express');
const ip = require('ip');

// Constants
const PORT = 8088;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  res.send('Hello world\n'+ip.address());
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);

