const express = require('express');
const path = require('path');

const app = express();
const port = process.env.PORT || 3000; //create localhost server

let counter = 0;

app.get('/', (req,res) => {
    res.sendFile(path.join(__dirname, 'index.html'));
});

app.post('/increment', (req, res) => {
    counter++;
    res.json({ count: counter });
  });

app.get('/count', (req,res) => {
    res.json({ count: counter });


});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});


