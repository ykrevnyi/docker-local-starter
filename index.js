
let express = require('express');

const app = express();

app.get('/', function(req, res) {
  res.send('home, sweet home');
});

app.listen(process.env.PORT);
