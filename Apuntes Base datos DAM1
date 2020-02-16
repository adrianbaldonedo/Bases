SQL lenguaje estructurado de consulta que se utiliza para interactuar con una base de datos Relacional.Permite consultas propiamente dichas,pero tambien otras operaciones como actualizaciones de control.
SELECT contiene una descripción completa de un conjunto de datos que quiero obtener de una base de datos.
Ejemplo de una consulta básica
```SQL
SELECT population
FROM WORLD
WHERE name = 'Germany';
```
WHERE especifica lo que debe cumplir cada registro para que pueda ser incluido en los resultados
Consultas   
Ejemplo de una consulta seleccionando mundo
```SQL
SELECT name
FROM WORLD
WHERE name IM ('France', 'Germany', 'Italy');
```     
ORDER BY instrucción SQL con funciones de agregado que muestra los campos que no se resumen en la cláusula SELECT.
```SQL
SELECT NOMBRE,SALAR
FROM TEMPLE
WHERE NUMHI >3
ORDER BY NOMEN;
```     
HAVING instrucción SQL con funciones de agregado,especificando las condiciones que se aplican a los campos que se resumen en el SLECT.También se usa para limitar los resultados pero se usa en función del agregado.
```SQL
SELECT continent FROM world
  GROUP BY continent
  HAVING SUM(population) > 100000000;
```     
UNION nos permite combinar dos instrucciones SELECT en una.Dedeb tener el mismo número de campos de resultado, en el mismo orden y con el mismo tipo de datos compatibles.
```SQL
SELECT title FROM casting
  JOIN movie ON (movie.id = movieid)
  JOIN actor ON (actor.id = actorid)
  WHERE name = 'Harrison Ford'  AND ord > 1;
```     
