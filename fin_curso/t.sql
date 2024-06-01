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
call busqueda ("60 segundos")


delimiter //
create procedure horario (in id_empleado int)
begin
select  empleado.nombre,horario.entrada, horario.salida, max(fecha) 
from empleadohorario 
inner join empleado on  empleadohorario.id_empleado = empleado.id_empleado
inner join horario on  empleadohorario.id_horario = horario.id_horario  
where empleadohorario.id_empleado = id_empleado;
end // 
delimiter ;