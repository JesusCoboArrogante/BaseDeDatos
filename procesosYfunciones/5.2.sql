/*ejercicio01*/
delimiter $$
create function divisible (numero int, divisor int)
returns  int
begin 
declare resultado int;
	if mod(numero,divisor) = 0 then
		set resultado = 1;
	else 
		set resultado = 0;
	end if;
    return (resultado);
end; $$
select divisible(10,3) as divisible

/*ejercicio02*/
delimiter $$
drop function if exists fecha;
create function fecha (in num_dia int)
returns varchar(30);
begin
declare x varchar(30);
case num_dia
when   1 then
	 set x="domingo";
when  2 then
	set x= "lunes";
when  3 then 
	set x= "martes";
when  4 then 
	set x="miercoles";
when  5 then
	set x="jueves";
when  6 then
	set x="viernes";
when  7 then
	set x="sabado";
end case;
return x;
end $$
delimiter ;

/*ejercicio03*/
delimiter $$
create function mayor (a int, b int, c int)
returns int
begin
declare mayor int;
if a > b and a > c then 
	set mayor = a;
elseif b > a and b > c then
	set mayor = b;
else 
	set mayor = c;
end if;
return (mayor);
end; $$
select mayor (15,16,13) as mayor

/*ejercicio04*/
delimiter //
create function reverso (a varchar (100))
returns varchar (13)
begin 
declare respuesta varchar (18);
declare sin_espacios varchar (100);
SET sin_espacios = REPLACE(a, ' ', '');
if reverse(sin_espacios) = sin_espacios then
 set respuesta = 'Es palindroma';
 else 
	set  respuesta = 'No es palindroma';
end if;
return (respuesta);
end //
select reverso ('Dabale arroz a la zorra el abad');



CREATE TABLE insertar_mov (
    cod_movimiento INT PRIMARY KEY AUTO_INCREMENT, 
    cod_cliente INT,
    cod_cuenta INT,
    fecha DATE,
    FOREIGN KEY (cod_cliente) REFERENCES cliente (codigo_cliente),
    FOREIGN KEY (cod_cuenta) REFERENCES cuenta (cod_cuenta)
);
select * from cuenta