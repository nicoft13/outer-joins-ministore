1- ¿Por qué usé LEFT JOIN en la Consulta 1 y no INNER JOIN?
Usé LEFT JOIN porque este tipo de JOIN preserva siempre la tabla que está a la izquierda.
Si usaba INNER JOIN, solo se muestran las ventas que tienen un producto válido.
Eso hace que ventas con productos mal cargados desaparezcan del resultado.

2- ¿Por qué usé RIGHT JOIN en la Consulta 2?
AUsé RIGHT JOIN porque este JOIN preserva siempre la tabla que está a la derecha.
Si un producto no aparece en ventas, igual queda en el resultado, pero con los campos de ventas en NULL.

3- ¿Qué representan los valores NULL en cada resultado?
Los NULL significan los datos que no coinciden en ambas tablas.

4- ¿Cuándo usaría FULL OUTER JOIN en un caso real?
Lo usaría cuando quiero ver todo de ambas tablas, sin perder ningún dato.
Sirve para detectar errores, faltantes, o inconsistencias.

