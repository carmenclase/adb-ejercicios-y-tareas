-- 1. ¿Cuál es el título de la película con el ID 10?
SELECT titulo FROM pelicula WHERE id_pelicula = 10;
-- 2. ¿Cuántas películas hay en total en la tabla film?
SELECT COUNT(*) FROM pelicula;
-- 3. ¿Cuál es el ID de la película más cara?
SELECT id_pelicula FROM pelicula ORDER BY rental_rate DESC LIMIT 1;
-- 4. ¿Cuántos actores están asociados con la película cuyo título es "ACADEMY DINOSAUR"?
SELECT COUNT(id_actor) FROM pelicula, pelicula_actor WHERE titulo = "ACADEMY DINOSAUR" AND pelicula.id_pelicula = pelicula_actor.id_pelicula;
-- 5. ¿Cuáles son los primeros 5 títulos de películas con una clasificación de "PG"?
SELECT titulo FROM pelicula WHERE clasificacion = "PG" LIMIT 5;
-- 6. ¿Qué director tiene más películas en la base de datos?

-- 7. ¿Cuántas películas tienen un alquiler con un costo superior a 3.50?
SELECT COUNT(*) FROM pelicula WHERE rental_rate > 3.50;
-- 8. ¿Cuál es el título de la película con el ID más bajo?
SELECT titulo FROM pelicula ORDER BY id_pelicula LIMIT 1;
-- 9. ¿Cuántas películas en total están disponibles para alquilar en la tienda?

-- 10. ¿Cuál es la duración promedio de las películas en la tabla film?

-- 11. ¿Qué actor tiene más películas asociadas a él en la tabla film_actor?

-- 12. ¿Cuáles son los 10 títulos de películas con la mayor duración?

-- 13. ¿Cuál es la clasificación más común entre las películas?

-- 14. ¿Qué idioma se utiliza con mayor frecuencia en las películas?

-- 15. ¿Cuántas películas fueron estrenadas en el año 2005?
SELECT COUNT(*) FROM pelicula WHERE anyo_lanzamiento = 2005;
-- 16. ¿Cuántas películas tienen una clasificación de "R" y un costo de alquiler superior a 4.00?
SELECT COUNT(*) FROM pelicula WHERE clasificacion = "R" AND rental_rate > 4.00;
-- 17. ¿Qué película tiene el precio de alquiler más bajo?

-- 18. ¿Cuál es el actor con más películas en la tabla film_actor?

-- 19. ¿Cuáles son los 3 títulos de películas que tienen la mayor cantidad de copias disponibles en inventario?

-- 20. ¿Cuáles son los 5 actores más comunes en las películas de la categoría "Action"?

-- 21. ¿Cuántas películas están catalogadas como "Drama" y tienen una duración superior a 120 minutos?

-- 22. ¿Cuántas películas fueron estrenadas antes del 1 de enero de 2000?

-- 23. ¿Cuál es el costo promedio de alquiler de todas las películas?

-- 24. ¿Qué película tiene el mayor precio de compra?

-- 25. ¿Cuántos actores participaron en la película con el título "CHAMPION"?

-- 26. ¿Cuál es la película más reciente en la base de datos?

-- 27. ¿Cuál es el precio promedio de las películas en la categoría "Action"?

-- 28. ¿Cuáles son los 10 primeros títulos de películas cuyo título empieza con la letra "S"?

-- 29. ¿Cuáles son las 5 películas que tienen la menor duración y están disponibles para alquilar?

-- 30. ¿Cuál es la película con más copias en inventario?
