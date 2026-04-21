CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;
CREATE TABLE autores (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    nacionalidad VARCHAR(50)
);
CREATE TABLE libros (
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    anio_publicacion INT,
    id_autor INT,
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);
INSERT INTO autores (nombre, nacionalidad) VALUES 
('Miguel de Cervantes', 'Española'),
('J.K. Rowling', 'Británica'),
('George Orwell', 'Británica');
INSERT INTO libros (titulo, anio_publicacion, id_autor) VALUES 
('Don Quijote de la Mancha', 1605, 1),
('Harry Potter y la piedra filosofal', 1997, 2),
('1984', 1949, 3);
SELECT libros.titulo, autores.nombre AS autor
FROM libros
JOIN autores ON libros.id_autor = autores.id_autor;