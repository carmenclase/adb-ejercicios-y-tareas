# Ejercicio 5

En una universidad, se lleva un registro de cursos, estudiantes y sus calificaciones. Sin embargo, la tabla CursosEstudiantes no está completamente normalizada.

Normaliza la tabla CursosEstudiantes para que cumpla con 1FN, 2FN y 3FN. Identifica las dependencias funcionales y elimina las dependencias parciales y transitivas en cada paso.

| RegistroID | EstudianteID | NombreEstudiante | Cursos | Profesor | Notas | Departamento |
| ---------- | ------------ | ---------------- | ------ | -------- | ----- | ------------ |
| 1 | 201 | Alicia | "Matemáticas, Física" | "Dr. Pérez" | "85, 90" | Ciencias |
| 2 | 202 |	Roberto | "Matemáticas, Química" | "Dr. Pérez" | "78, 88" | Ciencias |
| 3 | 203 |	Julia |	"Historia, Literatura" | "Dr. Gómez" | "92, 80" | Humanidades |
| 4 | 204 |	Mario |	"Química" |	"Dr. Pérez" | "75" | Ciencias |

## Resolución

Tabla `profesores`

| Profesor | Departamento | Curso | 
| --- | --- | --- |
| "Dr. Pérez" | Ciencias | "Matemáticas" |
| "Dr. Pérez" | Ciencias | "Física" |
| "Dr. Pérez" | Ciencias | "Química" |
| "Dr. Gómez" | Humanidades | "Historia" |
| "Dr. Pérez" | Humanidades | "Literatura" |

Tabla `alumnos`

| RegistroID | EstudianteID | NombreEstudiante |
| ---------- | ------------ | ---------------- |
| 1 | 201 | Alicia |
| 2 | 202 | Roberto |
| 3 | 203 | Julia |
| 4 | 204 | Mario |

Tabla `cursos`

| RegistroID | Curso |
| ---------- | ----- |
| 1 | Matemáticas |
| 1 | Física |
| 2 | Matemáticas |
| 2 | Química |
| 3 | Historia |
| 3 | Literatura |
| 4 | Química |

Tabla `notas`

| EstudianteID | Notas | 
| ------------ | ----- | 
| 201 | 85 |
| 201 | 90 |
| 202 | 78 |
| 202 | 88 |
| 203 | 92 |
| 203 | 80 |
| 204 | 75 |




registro -> 

id estudiante ->