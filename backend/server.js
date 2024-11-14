const express = require('express');
const app = express()

var path = require('path');

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

app.use(express.json());
app.use(express.static(path.join(__dirname, 'public')));

const indexRouter = require('./routes/index.routes');
const dataRouter = require('./routes/data.routes')
app.use('/', indexRouter);
app.use('/data', dataRouter);

app.listen(3000)