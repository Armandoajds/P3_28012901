const sqlite3 = require('sqlite3').verbose();

const DB_PATH = './database.db';

const db = new sqlite3.Database(DB_PATH, (err) => {
  if (err) {
    console.error(err.message);
    throw err;
  }
  console.log('Connected to the SQLite database.');
});
module.exports = router;
module.exports = db;
const db = require('./db');

// Crear tabla categorias
db.run(`CREATE TABLE IF NOT EXISTS categorias (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre TEXT
)`);

// Crear tabla productos
db.run(`CREATE TABLE IF NOT EXISTS productos (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre TEXT,
  codigo TEXT,
  precio REAL,
  descripcion TEXT,
  categoria_id INTEGER,
  extra1 TEXT,
  extra2 TEXT,
  FOREIGN KEY (categoria_id) REFERENCES categorias (id)
)`);

// Crear tabla imagenes
db.run(`CREATE TABLE IF NOT EXISTS imagenes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  producto_id INTEGER,
  url TEXT,
  destacado INTEGER,
  FOREIGN KEY (producto_id) REFERENCES productos (id)
)`);