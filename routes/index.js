const express = require('express');
const app = express();
const dotenv = require('dotenv');
const path = require('path');
const routes = require('./routes');

app.set('view engine', 'jade');
app.set('views', path.join(__dirname, 'views'));
app.get('hola', (req, res) => {
  const products = [
    { nombre: 'Producto 1' },
    { nombre: 'Producto 2' },
    { nombre: 'Producto 3' }
  ];

  const categories = [
    { id: 1, nombre: 'Categoría 1' },
    { id: 2, nombre: 'Categoría 2' },
    { id: 3, nombre: 'Categoría 3' }
  ];


  res.render('index', { products });
});

dotenv.config();

app.use(express.json());

app.use('/api', routes);

const PORT = process.env.PORT || 8080;

app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}`);
});