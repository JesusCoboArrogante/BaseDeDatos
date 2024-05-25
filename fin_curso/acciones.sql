/*para comprobar los empleados a que hora tienen que entrar*/
DROP PROCEDURE IF EXISTS horario;
delimiter //
create procedure horario (in id_empleado int)
begin
select empleado.nombre,horario.entrada, horario.salida, horarioempleado.max(fecha) from horarioempleado 
inner join horarioempleado
on  horaioempleado.id_empleado = empleado.id_empleado
inner join horarioempleado
on  horarioempleado.id_horario = horario.id_horario  
where id_empleado = horarioempleado.id_horario;
end // 
call horario(1);

describe empleadohorario

select*from horario


/*menor de edad*/
delimiter //
create trigger menores
before insert on alquiler
for each row
begin
	declare edad_cliente int;
	declare edad_pelicula int;
    
select edad into edad_cliente from cliente where id_cliente = new.id_cliente;
select edad into edad_pelicula from pelicula where id_pelicula = new.id_pelicula;

if edad_cliente < edad_pelicula then 
call mensaje_01();
end if;
end //
delimiter ;

delimiter //
create procedure mensaje_01()
begin
select "no se le puede dar el producto al cliente" as mensaje_01;
end//
delimiter ;
select * from cliente
