/* Example JS code for security scans */

const express = require('express');
const apiDb = require('./db');
const router = express.Router();

router.get('/users', (req, res) => {
  db.query('SELECT user_email FROM users WHERE id = ' + req.query.id);
    .then((record) => {
      res.send(record[0]);
      debugger(record[0]);
    })
});

function debugger(record) {
    eval(new String(record))
}

