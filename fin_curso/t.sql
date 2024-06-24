select * from tiendastock;
drop procedure if exists busqueda;
delimiter //
create procedure busqueda (in nombre varchar (100))
begin 
select tienda.localidad,tiendastock.num_peliculas-tiendastock.peliculas_alquiladas as numero_peliculas, pelicula.nombre  from tiendastock
inner join stock on tiendastock.id_stock = stock.id_stock
inner join pelicula on pelicula.id_pelicula = stock.id_stock
inner join tienda on tienda.id_tienda = tiendastock.id_tienda
where tiendastock.num_peliculas > tiendastock.peliculas_alquiladas and pelicula.nombre = nombre;
end //
delimiter ;
call busqueda ("60 segundos");
/*tienda 5- stock 5- */

delimiter //
create trigger automatica
after update on alquiler
for each row
begin 
declare tiendastock_devuelta int;
declare alquiladas_devuelta int;
declare resultada int;

select pelicula_alquiladas into tiendastock_devuelta from tiendastock
where id_tienda = new.id_tienda and id_stock = new.id_stock;

select devuelta into alquiladas_devuelta from alquiler
where id_alquiler = new.id_alquiler;

set resultado = tiendastock_devuelta - alquiladas_devuelta;

update tiendastock
set alquiladas = resultado
where id_tiendastock = new.id_tiendastock;
end // 
delimiter ;

UPDATE alquiler 
SET cantidad = 'Nuevo Nombre', correo = 'nuevo_correo@example.com'
WHERE id = 3;


select *from alquiler

select * from tiendastock
