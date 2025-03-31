-- 1. Crea una base de datos llamada cine con utf8mb4_unicode_ci.
CREATE DATABASE IF NOT EXISTS cine CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- 2. Modifica la base de datos cine para cambiar su collation a utf8mb4_general_ci.
ALTER DATABASE cine COLLATE utf8mb4_general_ci;
-- 3. Crea una tabla actores con los siguientes campos: id: UNSIGNED INT, auto incremental, clave primaria, nombre: VARCHAR(100), no nulo.
USE cine;
CREATE TABLE IF NOT EXISTS actores (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);
-- 4. Crea una tabla peliculas con los siguientes campos: id: AUTO_INCREMENT, clave primaria, titulo: VARCHAR(150), no nulo, anio_estreno: YEAR, no nulo.
USE cine;
CREATE TABLE IF NOT EXISTS peliculas (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    anio_estreno YEAR NOT NULL
);
-- 5. Crea la tabla intermedia actores_peliculas para gestionar la relación muchos a muchos entre actores y peliculas, con los campos: id: AUTO_INCREMENT, clave primaria, actor_id: UNSIGNED INT, clave foránea a actores(id), pelicula_id: UNSIGNED INT, clave foránea a peliculas(id), personaje: VARCHAR(100), no nulo.
USE cine;
CREATE TABLE IF NOT EXISTS actores_peliculas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    actor_id INT UNSIGNED,
    pelicula_id INT UNSIGNED,
    personaje VARCHAR(100) NOT NULL,
    FOREIGN KEY (actor_id) REFERENCES actores(id) ON DELETE CASCADE,
    FOREIGN KEY (pelicula_id) REFERENCES peliculas(id) ON DELETE CASCADE
);
-- 6. Modifica la tabla actores_peliculas para agregar una columna salario de tipo DECIMAL(10,2).
USE cine;
ALTER TABLE actores_peliculas ADD salario DECIMAL(10,2);
-- 7. Cambia el tamaño del campo nombre en la tabla actores a 150 caracteres.
USE cine;
ALTER TABLE actores MODIFY nombre VARCHAR(150) NOT NULL;
-- 8. Elimina la columna salario de la tabla actores_peliculas.
USE cine;
ALTER TABLE actores_peliculas DROP salario;
-- 9. Añade un índice a la columna titulo en peliculas para mejorar la búsqueda.
USE cine;
CREATE INDEX indice_titulo ON peliculas(titulo);
-- 10. Inserta un actor llamado "Leonardo DiCaprio".
USE cine;
INSERT INTO actores (nombre) VALUES ("Leonardo DiCaprio");
-- 11. Añade una película llamada "Titanic" con año de estreno 1997.
USE cine;
INSERT INTO peliculas (titulo, anio_estreno) VALUES ("Titanic", 1997);
-- 12. Registra la participación de "Leonardo DiCaprio" en "Titanic" como el personaje "Jack Dawson".
USE cine;
INSERT INTO actores_peliculas (actor_id, pelicula_id, personaje) VALUES (1, 1, "Jack Dawson");
-- 13. Inserta dos actores adicionales ("Kate Winslet" y "Tom Hanks").
USE cine;
INSERT INTO actores (nombre) VALUES ("Kate Winslet"), ("Tom Hanks");
-- 14. Añade tres películas adicionales ("Forrest Gump", "Avatar", "Inception").
USE cine;
INSERT INTO peliculas (titulo) VALUES ("Forrest Gump"), ("Avatar"), ("Inception");
-- 15. Registra la participación de actores en distintas películas.
USE cine;
INSERT INTO actores_peliculas (actor_id, pelicula_id, personaje) VALUES (2, 1, "Rose"), (3, 2, "Forrest Gump"), (1, 3, "Cobb"); 
-- 16. Consulta todas las películas en las que ha trabajado "Leonardo DiCaprio".
USE cine;
SELECT pelicula_id FROM actores_peliculas WHERE actor_id = 1;
-- 17. Consulta todos los actores que han participado en la película "Titanic".
USE cine;
SELECT actor_id FROM actores_peliculas WHERE pelicula_id = 1;
-- 18. Elimina la participación de un actor en una película específica.
USE cine;
DELETE FROM actores_peliculas WHERE actor_id = 3;
-- 19. Elimina un actor y sus registros de películas.
USE cine;
DELETE FROM actores WHERE id = 1;
-- 20. Elimina la base de datos cine.
USE cine;
DROP DATABASE IF  EXISTS cine;