const db = require('../db');
const express = require('express');
const router = express.Router();
const sqlite3 = require('sqlite3').verbose();

// Middleware para verificar la autenticación
function isAuthenticated(req, res, next) {
  const { USERNAME, PASSWORD } = process.env;
  const { username, password } = req.headers;

  if (username === USERNAME && password === PASSWORD) {
    return next();
  }

  return res.status(401).json({ error: 'Unauthorized' });
}

// Obtener listado de productos
router.get('/productos', isAuthenticated, (req, res) => {
  db.all('SELECT * FROM productos', (err, rows) => {
    if (err) {
      console.error(err.message);
      return res.status(500).json({ error: 'Internal Server Error' });
    }
    res.json(rows);
  });
});

// Agregar un nuevo producto
router.post('/productos', isAuthenticated, (req, res) => {
  const { nombre, codigo, precio, descripcion, categoria_id, extra1, extra2 } = req.body;

  db.run(
    'INSERT INTO productos (nombre, codigo, precio, descripcion, categoria_id, extra1, extra2) VALUES (?, ?, ?, ?, ?, ?, ?)',
    [nombre, codigo, precio, descripcion, categoria_id, extra1, extra2],
    function (err) {
      if (err) {
        console.error(err.message);
        return res.status(500).json({ error: 'Internal Server Error' });
      }
      res.json({ id: this.lastID });
    }
  );
});

// Editar un producto existente
router.put('/productos/:id', isAuthenticated, (req, res) => {
  const { id } = req.params;
  const { nombre, codigo, precio, descripcion, categoria_id, extra1, extra2 } = req.body;

  db.run(
    'UPDATE productos SET nombre = ?, codigo = ?, precio = ?, descripcion = ?, categoria_id = ?, extra1 = ?, extra2 = ?, WHERE id = ?'

    [nombre, codigo, precio, descripcion, categoria_id, extra1, extra2, id],
    function (err) {
      if (err) {
        console.error(err.message);
        return res.status(500).json({ error: 'Internal Server Error' });
      }
      if (this.changes === 0) {
        return res.status(404).json({ error: 'Product not found' });
      }
      res.json({ message: 'Product updated successfully' });
    }
  );
});

// Agregar imágenes a un producto
router.post('/productos/:id/imagenes', isAuthenticated, (req, res) => {
  const { id } = req.params;
  const { url, destacado } = req.body;

  db.run(
    'INSERT INTO imagenes (producto_id, url, destacado) VALUES (?, ?, ?)',
    [id, url, destacado],
    function (err) {
      if (err) {
        console.error(err.message);
        return res.status(500).json({ error: 'Internal Server Error' });
      }
      res.json({ id: this.lastID });
    }
  );
});

// Obtener listado de categorías
router.get('/categorias', isAuthenticated, (req, res) => {
  db.all('SELECT * FROM categorias', (err, rows) => {
    if (err) {
      console.error(err.message);
      return res.status(500).json({ error: 'Internal Server Error' });
    }
    res.json(rows);
  });
});

// Agregar una nueva categoría
router.post('/categorias', isAuthenticated, (req, res) => {
  const { nombre } = req.body;

  db.run('INSERT INTO categorias (nombre) VALUES (?)', [nombre], function (err) {
    if (err) {
      console.error(err.message);
      return res.status(500).json({ error: 'Internal Server Error' });
    }
    res.json({ id: this.lastID });
  });
});

// Editar una categoría existente
router.put('/categorias/:id', isAuthenticated, (req, res) => {
  const { id } = req.params;
  const { nombre } = req.body;

  db.run('UPDATE categorias SET nombre = ? WHERE id = ?', [nombre, id], function (err) {
    if (err) {
      console.error(err.message);
      return res.status(500).json({ error: 'Internal Server Error' });
    }
    if (this.changes === 0) {
      return res.status(404).json({ error: 'Category not found' });
    }
    res.json({ message: 'Category updated successfully' });
  });
});

module.exports = router;