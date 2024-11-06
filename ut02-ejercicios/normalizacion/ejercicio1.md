# Ejercicio 1 (Resuelto)

La siguiente tabla representa una base de datos simplificada para una biblioteca:
CodLibro 	Titulo 	Autor 	Editorial 	CodLector 	NombreLector 	FechaDev
1001 	Variable Compleja 	Murray Spiegel 	McGraw Hill 	501 	Pérez Gómez, Juan 	15/04/2014
1004 	Visual Basic 	E. Petroustsos 	Anaya 	502 	Ríos Terán, Ana 	17/04/2014
1005 	Estadística 	Murray Spiegel 	McGraw Hill 	503 	Roca, René 	16/04/2014
1006 	Oracle University 	Nancy Greenberg, Priya Nathan 	Oracle Corp. 	504 	García Roque, Luis 	20/04/2014
1007 	Clipper 5.01 	Ramalho 	McGraw Hill 	501 	Pérez Gómez, Juan 	18/04/2014
Primera Forma Normal (1NF)

Para cumplir con la 1NF, descomponemos el nombre del lector en sus componentes atómicos: Apellido1, Apellido2 y Nombre.

Tabla Biblioteca en 1NF:
CodLibro 	Titulo 	Autor 	Editorial 	CodLector 	Apellido2 	Nombre 	FechaDev
1001 	Variable Compleja 	Murray Spiegel 	McGraw Hill 	501 	Gómez 	Juan 	15/04/2014
1004 	Visual Basic 5 	E. Petroustsos 	Anaya 	502 	Terán 	Ana 	17/04/2014
1005 	Estadística 	Murray Spiegel 	McGraw Hill 	503 		René 	16/04/2014
1006 	Oracle University 	Nancy Greenberg 	Oracle Corp. 	504 	Roque 	Luis 	20/04/2014
1007 	Clipper 5.01 	Ramalho 	McGraw Hill 	501 	Gómez 	Juan 	18/04/2014
Segunda Forma Normal (2NF)

La 2NF elimina las dependencias parciales.

Análisis de dependencias parciales:

    Clave Primaria (compuesta): en esta tabla, la clave primaria podría ser compuesta por CodLibro y CodLector, ya que cada combinación única identifica un préstamo específico de un libro a un lector.
    Dependencias Parciales:
        Titulo, Autor, y Editorial dependen solamente de CodLibro, ya que estas características pertenecen exclusivamente al libro y no dependen del lector. Esto indica una dependencia parcial con respecto a la clave primaria compuesta (CodLibro, CodLector).
        Apellido2, Nombre, y FechaDev dependen solamente de CodLector, porque estos datos pertenecen únicamente al lector y no están relacionados directamente con el libro. Esto también es una dependencia parcial respecto a la clave primaria compuesta.

Se crean tablas adicionales para los datos de los libros, lectores y la relación préstamo.

Tabla Libros:
CodLibro 	Titulo 	Autor 	Editorial
1001 	Variable Compleja 	Murray Spiegel 	McGraw Hill
1004 	Visual Basic 5 	E. Petroustsos 	Anaya
1005 	Estadística 	Murray Spiegel 	McGraw Hill
1006 	Oracle University 	Nancy Greenberg 	Oracle Corp.
1007 	Clipper 5.01 	Ramalho 	McGraw Hill

Tabla Lectores:
CodLector 	Apellido1 	Apellido2 	Nombre
501 	Pérez 	Gómez 	Juan
502 	Ríos 	Terán 	Ana
503 	Roca 		René
504 	García 	Roque 	Luis

Tabla Prestamos:
CodLibro 	CodLector 	FechaDev
1001 	501 	15/04/2014
1004 	502 	17/04/2014
1005 	503 	16/04/2014
1006 	504 	20/04/2014
1007 	501 	18/04/2014
Tercera Forma Normal (3NF)

No existen dependencias transitivas:

Tabla Libros:

    Clave primaria: CodLibro
    Análisis de dependencias transitivas:
        CodLibro → Titulo: Titulo depende directamente de CodLibro.
        CodLibro → Autor: Autor depende directamente de CodLibro.
        CodLibro → Editorial: Editorial depende directamente de CodLibro.

En esta tabla, no hay dependencias transitivas porque cada atributo Titulo, Autor y Editorial depende únicamente de la clave primaria CodLibro.

Tabla Lectores:

    Clave primaria: CodLector
    Análisis de dependencias transitivas:
        CodLector → Apellido1, Apellido2, Nombre: todos estos atributos dependen directamente de CodLector.

No existen dependencias transitivas en esta tabla, ya que cada atributo depende exclusivamente de la clave primaria CodLector.

Tabla Prestamos:

    Clave primaria compuesta: (CodLibro, CodLector)
    Análisis de dependencias transitivas:
        (CodLibro, CodLector) → FechaDev: FechaDev depende directamente de la clave primaria compuesta (CodLibro, CodLector).

En esta tabla, no existen dependencias transitivas porque FechaDev depende completamente de la clave primaria compuesta (CodLibro, CodLector) y no de ningún otro atributo intermedio.