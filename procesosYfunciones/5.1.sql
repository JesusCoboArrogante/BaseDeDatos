use liga;
/*5.1 A)*/
delimiter //
create procedure ayo()
begin
select year(now());
end //
call ayo;

/*5.1 B)*/
set @usuario = 2;

/*5.1 C)*/
delimiter $$
create procedure suma (inout x int)/**/
begin 
set x = x + 1;
end $$
call suma(@usuario);
select @usuario;

drop procedure suma
/*5.1 D)*/
delimiter $$
create function f_suma () returns Int
deterministic
begin  
set @usuario = @usuario +1;
return @usuario;
end $$
select f_suma();

/*5.1 F)*/
set @letra = "curso";
delimiter $$
create procedure letras(inout cadena varchar(20))
begin 
set cadena = upper(left(cadena,3));
end $$
call letras(@letra);
select @letra


/*5.1 G)*/
delimiter $$
create procedure DosLetras(unaCadena varchar (20),dosCadena varchar(20))
begin 
select upper(concat(unaCadena,dosCadena)) as "union";
end $$
call DosLetras("hola "," adios");

/*5.1 H)*/
delimiter $$
create function hipotenusa(ladoUno int,ladoDos int) 
returns float
deterministic 
no sql
begin 
return sqrt(pow(ladoUno,2) + pow(ladoDos,2));
end$$
select hipotenusa(3,4);


