-- ══════════════════════════════════════════
-- MiniStore — Soluciones con Outer JOINs
-- Autor: [Toledo Facundo ]
-- Fecha: [17/08/2026]
-- ══════════════════════════════════════════
-- ── CONSULTA 1: LEFT JOIN ─────────────────
-- Pregunta de negocio: ¿Qué productos del catálogo nunca fueron vendidos?
-- Mostrá todos los productos y sus ventas asociadas.
-- Los productos sin ventas aparecerán con NULL en las columnas de ventas.
-- [Tu consulta aquí]

select
    v.venta_id,
    p.nombre,
    p.categoria,
    v.cantidad,
    sum(v.cantidad*p.precio) as Total
from productos p
left join ventas v
    on v.producto_id = p.producto_id
where v.venta_id is null
group by p.producto_id, v.venta_id, p.nombre, p.categoria, v.cantidad;


-- ── CONSULTA 2: RIGHT JOIN ────────────────
-- Pregunta de negocio: ¿Existen ventas registradas con productos
-- que no figuran en nuestro catálogo? (posible error de carga de datos)
-- Los registros huérfanos aparecerán con NULL en las columnas de productos.
-- [Tu consulta aquí]

select
    v.venta_id,
    p.nombre,
    p.categoria,
    v.cantidad,
    sum(v.cantidad*p.precio) as Total
from productos p
right join ventas v
    on v.producto_id = p.producto_id
where p.producto_id is null
group by  v.venta_id, p.nombre, p.categoria, v.cantidad;


-- ── CONSULTA 3: FULL OUTER JOIN ───────────
-- Pregunta de negocio: Vista completa de auditoría que muestre
-- todos los productos y todas las ventas sin perder ninguna fila,
-- identificando tanto productos sin ventas como ventas sin producto.
-- [Tu consulta aquí]


select
    v.venta_id,
    p.nombre,
    p.categoria,
    v.cantidad,
    sum(v.cantidad*p.precio) as Total
from productos p
full outer join ventas v
    on v.producto_id = p.producto_id
group by  v.venta_id, p.nombre, p.categoria, v.cantidad;
