/*para saber los empleados a que hora tienen que entrar*/
DROP PROCEDURE IF EXISTS horario;
delimiter //
create procedure horario (in id_empleado int)
begin
select  empleado.nombre,horario.entrada, horario.salida, max(fecha) 
from empleadohorario 
inner join empleado on  empleadohorario.id_empleado = empleado.id_empleado
inner join horario on  empleadohorario.id_horario = horario.id_horario  
where empleadohorario.id_empleado = id_empleado;
end // 
call horario(2);

/*mensaje de error*/
delimiter //
drop procedure if exists menor;
create  procedure menor()
begin
 signal sqlstate '45000' 
 set message_text = 'El cliente no tiene la edad suficiente para alquilar esta película';
 
end //
delimiter ;
call menor();

/*menor de edad*/
drop trigger if exists menores 
delimiter //
create trigger menores
before insert on alquiler
for each row
begin
declare edad_cliente int;
declare edad_pelicula int;
SELECT edad INTO edad_cliente FROM cliente
WHERE id_cliente = new.id_cliente
LIMIT 1;
SELECT pelicula.edad INTO edad_pelicula FROM stock
INNER JOIN pelicula ON stock.id_pelicula = pelicula.id_pelicula
WHERE stock.id_stock = new.id_stock
LIMIT 1;
if edad_cliente < edad_pelicula then
call menor();
end if;
end //;


/*recargo por retraso*/
set global event_scheduler = on;
drop event if exists extra;
delimiter //
create event extra
on schedule every 1 day 
starts '2024-05-26 10:00:00'
do
update retrasos set dias = dias + 1;
update retrasos set debido = dias * 0.20;
end //
delimiter ;
SHOW EVENTS;

/*aumentar la edad de los clientes*/
drop event if exists edad_cliente;
delimiter //
create event cambio_edad
on schedule every 1 year 
starts '2024-01-01 00:00:01'
do
update cliente set edad = edad + 1;
end //
delimiter ;
SHOW EVENTS;

create view caradura as 
select cliente.nombre, cliente.apellido, cliente.telefono, alquiler.fx_devolucion, retrasos.dias, retrasos.debido from alquiler 
inner join retrasos on alquiler.id_alquiler = retrasos.id_alquiler
inner join cliente on alquiler.id_cliente = cliente.id_cliente;
select * from caradura





