/*1. ¿Cuál es el título de todos los libros escritos por Gabriel García Márquez?*/
select titulo from tlibro
where tlibro.autor = "Gabriel García Márquez";

/*2. Muestra todos los libros que fueron publicados antes de 1970.*/
select tlibro.titulo from tlibro
where tlibro.año < 1970;

/*3. Actualiza el precio del libro "El Alquimista" a $25.50.*/
/*update tlibro set precio = 25.50
where titulo = "el alquimista";
select * from tlibro;*/
update tlibro set precio = 25.50
where  id_libro = 1;
select * from tlibro;

/*4. Elimina el libro "Matar a un ruiseñor" de la base de datos.*/
delete from tlibro
where id_libro = 5;
select * from tlibro;

/*5. Encuentra el título y el autor de los libros con un precio superior a $20.00.*/
select titulo, autor from tlibro
where precio > 20.00;

/*6. Calcula el total de libros publicados después del año 1990.*/
select count(*) from tlibro
where año > 1990;

/*7. ¿Quién es el autor del libro más caro en la tienda?*/
select autor from tlibro
where precio = (select max(precio) from tlibro);

/*8. Muestra todos los libros cuyo título contiene la palabra "Harry".*/
select titulo from tlibro
where titulo like "harry%";

/*9.¿Cuáles son los libros que aún no han sido vendidos?*/
select tlibro.titulo from tlibro
left join  tventas on tlibro.id_libro = tventas.id_libro
where tventas.id_libro is null;

/*10.Calcula el precio promedio de todos los libros en la tienda.*/
select format(avg(precio),2) as promedio from tlibro;

/*11.Encuentra los libros que tienen un precio entre $15.00 y $20.00.*/
select titulo, precio from tlibro
where precio > 15.00 and
precio < 20.00;

/*12.Muestra los libros ordenados por precio de forma descendente.*/
select * from tlibro
order by precio;

/*13. Encuentra los libros que contienen la palabra "Don" en el título.*/
select * from tlibro
where titulo like "don%";

/*14. ¿Cuántos libros hay en la tienda en total?*/
select count(*) from tlibro;

/*15. Muestra el título del libro más antiguo en la tienda.*/
select min(año) from tlibro;

/*16. Muestra los libros junto con el nombre del cliente que los compró.*/
select tlibro.titulo, tcliente.nombre from tventas
right join tlibro on tventas.id_libro = tlibro.id_libro
right join tcliente on tventas.id_cliente = tcliente.id_cliente
where tventas.id_cliente is not null;

/*17. Encuentra el cliente que ha realizado el mayor número de compras.*/
 select tcliente.nombre, max(tventas.cantidad) from tventas
 inner join tcliente on tventas.id_cliente = tcliente.id_cliente;

/*18. Encuentra el precio promedio de los libros vendidos.*/
select format( avg(tlibro.precio),2) as promedio  from tventas
inner join tlibro on tlibro.id_libro = tventas.id_libro
where tventas.id_libro is not null;

/*19. Encuentra el año de publicación del libro más reciente en la tienda.*/
select * from tlibro
where año = (select max(año) from tlibro);

/*20. Encuentra el título del libro más barato en la tienda.*/
select titulo, precio from tlibro
where precio = (select min(precio) from tlibro);

/*21. Encuentra el nombre del cliente que realizó la última compra.*/
select tcliente.nombre, tventas.fecha from tventas
inner join tcliente on tcliente.id_cliente = tventas.id_cliente
where fecha = (select max(fecha) from tventas);

/*22. Calcula el total de clientes en la tienda.*/
select count(tcliente.id_cliente) from tventas
left join tcliente on tventas.id_cliente = tcliente.id_cliente
where tventas.id_cliente is not null;

/*23. Muestra los libros junto con la cantidad vendida para cada uno*/
select tlibro.*, tventas.cantidad from tventas
inner join tlibro on tventas.id_libro = tlibro.id_libro;

/*24. Muestra los nombres de los clientes junto con la cantidad total de libros que han comprado.*/
select tcliente.*, tventas.cantidad from tventas
inner join tcliente on tventas.id_cliente = tcliente.id_cliente;

/*25.	¿Cuántos libros han sido vendidos en total?*/
select sum(cantidad) as ventas from tventas;

/*26. Muestra los correos de los clientes que hayan comprado más de un libro.*/
select tcliente.email from tventas
left join tcliente on tcliente.id_cliente = tventas.id_cliente
where tventas.cantidad > 1;

/*27. Muestra los libros ordenados por título de forma ascendente.*/
select * from tlibro
order by titulo;

/*28.	Calcula el precio total de todos los libros vendidos.*/
select sum(tlibro.precio * tventas.cantidad)from tventas
left join tlibro on tlibro.id_libro = tventas.id_libro
where tventas.id_cliente is not null;

/*29. Encuentra el autor con más libros vendidos.*/
select tlibro.autor from tventas
inner join tlibro on tventas.id_libro = tlibro.id_libro
where tventas.cantidad = (select max(cantidad) from tventas);

/*30. Encuentra el título del libro más antiguo vendido*/
select tlibro.id_libro from tlibro
where tlibro.año =(select min(año) from tlibro
right join tventas on tlibro.id_libro = tventas.id_libro
where tventas.id_libro is not null
)