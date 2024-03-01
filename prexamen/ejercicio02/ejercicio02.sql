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
precio < 20.00
