-- 1. Crea una base de datos llamada universidad con utf8mb4_unicode_ci.
CREATE DATABASE IF NOT EXISTS universidad CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- 2. Modifica la base de datos universidad para cambiar su collation a utf8mb4_general_ci.
ALTER DATABASE universidad COLLATE utf8mb4_general_ci;
-- 3. Crea una tabla alumnos con los siguientes campos: id: UNSIGNED INT, auto incremental, clave primaria. nombre: VARCHAR(100), no nulo.
USE universidad;
CREATE TABLE IF NOT EXISTS alumnos (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);
-- 4. Crea una tabla asignaturas con los siguientes campos: id: AUTO_INCREMENT, clave primaria. nombre: VARCHAR(100), no nulo.
USE universidad;
CREATE TABLE IF NOT EXISTS asignaturas (
	id AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);
-- 5. Crea la tabla intermedia matriculas para gestionar la relación muchos a muchos entre alumnos y asignaturas, con los campos: id: AUTO_INCREMENT, clave primaria. alumno_id: UNSIGNED INT, clave foránea a alumnos(id). asignatura_id: UNSIGNED INT, clave foránea a asignaturas(id). fecha_matricula: DATE, no nulo.
USE universidad;
CREATE TABLE IF NOT EXISTS matriculas (
	alumno_id INT UNSIGNED, 
    FOREIGN KEY (alumno_id) REFERENCES alumnos(id),
	asignatura_id INT UNSIGNED,
    FOREIGN KEY (asignatura_id) REFERENCES asignaturas(id),
    fecha_matricula DATE NOT NULL
);
-- 6. Modifica la tabla matriculas para agregar una columna nota de tipo DECIMAL(4,2).
USE universidad;
ALTER TABLE matriculas ADD nota DECIMAL(4,2);
-- 7. Cambia el tamaño del campo nombre en la tabla asignaturas a 150 caracteres.
USE universidad;
ALTER TABLE asignaturas MODIFY nombre VARCHAR(150) NOT NULL;
-- 8. Elimina la columna nota de la tabla matriculas.
-- 9. Añade un índice a la columna nombre en asignaturas para mejorar la búsqueda.
-- 10. Inserta un alumno llamado "Luis Gómez".
-- 11. Añade una asignatura llamada "Matemáticas".
-- 12. Matricula al alumno en Matemáticas con fecha de matrícula de hoy.
-- 13. Inserta dos alumnos adicionales ("María Fernández" y "Carlos Ruiz").
-- 14. Añade tres asignaturas adicionales ("Física", "Historia", "Química").
-- 15. Matricula a los alumnos en distintas asignaturas.
-- 16. Consulta todas las asignaturas en las que está inscrito el alumno "Luis Gómez".
-- 17. Consulta todos los alumnos que están inscritos en la asignatura "Matemáticas".
-- 18. Elimina la inscripción de un alumno en una asignatura específica.
-- 19. Elimina un alumno y sus matrículas asociadas.
-- 20. Elimina la base de datos universidad.