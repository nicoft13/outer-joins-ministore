1- ¿Por qué usé LEFT JOIN en la Consulta 1 y no INNER JOIN?
Utilice el LEFT JOIN porque necesitaba que aparezcan todas las ventas, incluyendo aquellas a las que no tienen coincidencia en la tabla productos. 
Si usaba INNER JOIN, solo se muestran las ventas que tienen un producto válido.


2- ¿Por qué usé RIGHT JOIN en la Consulta 2?
Aca usé RIGHT JOIN porque quería que productos aparecian, incluso los que nunca se vendieron.

3- ¿Qué representan los valores NULL en cada resultado?
Los NULL significan los datos que no coinciden en ambas tablas.

4- ¿Cuándo usaría FULL OUTER JOIN en un caso real?
Lo usaría cuando quiero ver todo de ambas tablas, sin perder ningún dato.
Sirve para detectar errores, faltantes, o inconsistencias.

