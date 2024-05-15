/*para comprobar los empleados a que hora tienen que entrar*/
DROP PROCEDURE IF EXISTS horario;
delimiter //
create procedure horario (in id_empleado int)
begin
select max(fecha), id_tienda from cuadrante 
where id_empleado = id_empleado;
end//
call horario(1)


