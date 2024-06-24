/*Procedimiento*/
use motrix;
/*para saber los empleados a que hora tienen que entrar*/
drop procedure if exists horario;
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
call horario(2);


/*busqueda de pelicula*/
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
select nombre from pelicula

/*mensaje de error*/
delimiter //
drop procedure if exists menor;
create  procedure menor()
begin
 signal sqlstate '45000' 
 set message_text = 'El cliente es menor';
 
end //
delimiter ;
call menor();
/*-------------------------------------------------------------------------------------------------------------------------*/
/*trigger*/
/*menor de edad*/
drop trigger if exists menores
delimiter //
create trigger menores
before insert on alquiler
for each row
begin
declare edad_cliente int;
declare edad_pelicula int;
select edad into edad_cliente from cliente
where id_cliente = new.id_cliente;

select pelicula.edad into edad_pelicula from tiendastock
inner join stock on stock.id_stock = tiendastock.id_stock
inner join pelicula on stock.id_pelicula = pelicula.id_pelicula
where tiendastock.id_tiendastock = new.id_tiendastock;

if edad_cliente < edad_pelicula then
call menor();
end if;
end //;
insert into alquiler (id_cliente, id_tiendastock, fx_adquisicion, fx_devolucion, cantidad, devuelta)
values
(4,2,"2024-02-01","2024-02-03",1,0);
select * from cliente
where id_cliente = 4

drop trigger if exists automatica;
delimiter //
create trigger automatica
after update on alquiler
for each row
begin 
declare tiendastock_devuelta int;
declare alquiladas_devuelta int;
declare resultado int;
select peliculas_alquiladas into tiendastock_devuelta from tiendastock
where id_tiendastock = new.id_tiendastock ;
select devuelta into alquiladas_devuelta from alquiler
where id_alquiler = new.id_alquiler;
set resultado = tiendastock_devuelta - alquiladas_devuelta;
 update tiendastock
    set peliculas_alquiladas = resultado
    where id_tiendastock = new.id_tiendastock;
end // 
delimiter ;

update alquiler 
set devuelta = devuelta + 1
where id_alquiler = 2;

select tiendastock.* from tiendastock
inner join alquiler on tiendastock.id_tiendastock = alquiler.id_tiendastock
where id_alquiler = 2;


drop trigger if exists automatica01;
delimiter //
create trigger automatica01
after insert on alquiler
for each row
begin 
declare tiendastock_alquiladas int;
declare alquiladas_devuelta int;
declare resultado int;
select peliculas_alquiladas into tiendastock_alquiladas from tiendastock
where id_tiendastock = new.id_tiendastock ;
select cantidad into alquiladas_devuelta from alquiler
where id_alquiler = new.id_alquiler;
set resultado = tiendastock_alquiladas + alquiladas_devuelta;
 update tiendastock
    set peliculas_alquiladas = resultado
    where id_tiendastock = NEW.id_tiendastock;
end // 
delimiter ; 
insert into alquiler (id_cliente, id_tiendastock, fx_adquisicion, fx_devolucion, cantidad, devuelta)
values
(1,2,"2024-02-01","2024-02-03",1,0);

select tiendastock.* from tiendastock
inner join alquiler on tiendastock.id_tiendastock = alquiler.id_tiendastock
where id_alquiler = 6;


show triggers;
/*----------------------------------------------------------------------------------------------------------------------------------------------------------*/
/*consultas*/
/*identificar a lo que no han devuelto pelicula*/
drop view caradura;
create view caradura as 
select cliente.telefono, cliente.nombre, cliente.apellido, pelicula.nombre as pelicula, fx_adquisicion, fx_devolucion, retrasos.dias, retrasos.debido
from alquiler
inner join retrasos on alquiler.id_alquiler = retrasos.id_alquiler
inner join cliente  on alquiler.id_cliente = cliente.id_cliente
inner join tiendastock on tiendastock.id_tiendastock = alquiler.id_tiendastock
inner join stock on tiendastock.id_stock = stock.id_stock
inner join pelicula  on stock.id_pelicula = pelicula.id_pelicula;
select * from caradura;


select pelicula.nombre from generopelicula
inner join pelicula on pelicula.id_pelicula = generopelicula.id_pelicula
inner join genero on genero.id_genero = generopelicula.id_genero 
where genero.nombre = "accion";

select * from pelicula
where edad < 10;

/*------------------------------------------------------------------------------------------------------------------------------------------*/
/*eventos*/
/*recargo por retraso*/
set global event_scheduler = on;
drop event if exists extra;
delimiter //
create event extra
on schedule every 1 day 
starts current_timestamp
do
begin
update retrasos set dias = dias + 1;
update retrasos set debido = dias * 0.20;
end //;
delimiter ;
show events;
select * from retrasos;

/*aumentar la edad de los clientes*/
drop event if exists cambio_edad;
delimiter //
create event cambio_edad
on schedule every 1 day
starts current_timestamp
do
begin
update cliente set edad = edad + 1
where month(cumpleaños) = month(curdate());
update cliente set autoriza = null
where edad >= 18;
end //
delimiter ;
show events;
select * from cliente



