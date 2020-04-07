INDICE 
<a name="INDICE"></a>

1.[Sublenguajes SQL](#subsql)
2.[DQL](#dql)
  2.1[Sintaxis](#sintaxis)
3..[DCL](#dcl)
4..[DML](#dml)
5.[clase](#clase)
  5.1[investigacion](#investigacion.sql)
  5.2[nespaciales](#nespaciales.sql)
  
1. Tenemos 6 Sublenguajes que son los siguientes.
  1.1 DQL(DATA ALREY LANG)Opera sobre Datos;SELECT
  1.2 DML(DATE MANIPULATION LANG)Opera sobre Datos:Insert,UPDATE,DELETE
  1.3 DDL(DATE DEFINITION LANG) Opera sobre los objetos de BD CREATE,ACTER,DROP
  1.4 TCL (TRANSATION CONTROL LANG)Commit RollBack
  1.5 DCL(DATA CONTROL LANG)Grante,REMOVE
  1.6 SCL(SESSION CONTROL)ALTER SESSION
2. Por ahora solo nos centraremos en los dos primeros en el DQL, DCL y el DML.
3. DQL es un lenguaje SQL que soporta todo los tipos de iner joins con mas de dos tablas.
4. DQL tiene la siguiente sintaxis:
    4.1  CREATE -> Tabla, Base de Datos
    4.2 CREATE -> SCHEMA myOther DB
    4.3 CREATE (SCHEMA)DATABASING
    4.4  [if NOT EXISTS]
    4.5 [CHARACTER SET] 
    4.6  CREATE TABLE|DOMINIO ALUMNO(
    4.7   id iINTEGER NOT NULL
    4.8    nome NCHAR(50)
    4.9 apellidos NCHAR(200)
    4.10  nado
    4.11  TIMESTAMP marca de tiempo para la fecha y hora.
    4.12  ON DELETE NO ACTION sirve para cargarse las tablas que estna relacionadas.
    4.13  CASCADE si borras algo en la tabla padre te cargas tambien la tabla hija.
    4.14   SET NULL cuando borras en los padres te cargas tambien la tabla hija.
    4.15  SET DEFAULT sirve para poner por defecto
    4.16 [CONSTRAINT <NOMBRE DE LA RESTRICCIÓN>]
   4.17  UNIQUE <atributos>
5. DCL esta compuesto de la siguiente manera.
 5.1 CONSTRANT
 5.2 CRECK
 5.3 NOT DEFERRABLE
 5.4 ```SQL
 CHECK saldo>=(SELECT SALDO
                FROM empleado
                WHERE departamento='A'
 ````
  5.5 DROP SCHEMA
  5.6 IF EXISTS <nombre de la bd>
  5.7 DROP TABLE
  5.8 [IF EXISTS] <nombre de la tabla>
  5.9 [CASCASDE|RESTRICT]
  5.10 ALTER TABLE <nombre de la tabla> ADD [COLUMN] <atributo><adminb>
  5.11 DROP COLUMN <atributo>[CASCADE|RESTRICTION]
  5.12 ADD <restriction>
  5.13 DROP <restriction>
6. DML tiene la siguiente sintaxis
  6.1 INSERT INTO <name database>[(atributo 1,atributo 2,....)](VALUNES(<valor1>,<valor2>....) 
  6.2 SELECT
    6.2.1 Mismo número de columnas
    6.2.2 Mismos domninios -> tipo de datos(DATETIME,NCHAR,INTEGER)
   6.3 DELETE FROM <nomnbre de la tabla> [WHERE PREDICADO]
   6.4 UPDATE <nomnbre de la tabla>
    6.4.1 SET <atributo1>=<valor1>,<atributo2>=<valor2>
    6.4.2 [WHERE <predicado>]
    6.4.3 UPDATE world
    6.4.4 SET Name='España'
            Continentn='Africa'
            WHERE name='SPAIN'
 7. Ejercicios realizados en clase
  https://gist.github.com/adrianbaldonedo/7881acc2c3a644ab221ab3013a8e3caa#file-investigacion-sql
  https://gist.github.com/adrianbaldonedo/7881acc2c3a644ab221ab3013a8e3caa#file-nespaciales-sql
  
[VOLVER AL INDICE]
(#INDICE)
