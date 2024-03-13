use liga;
/*5.1 A)*/
delimiter //
create procedure ayo()
begin
select year(now());
end //
call ayo;

/*5.1 B)*/
set @usuario = 0;

/*5.1 C)*/
delimiter $$
create procedure suma ()
begin 
set @usuario = @usuario + 1;
end $$
call suma();
select @usuario;

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
create procedure letras()
begin 
set @letra = left(@letra,3);
end $$
call letras();
select @letra

/*5.1 G)*/
delimiter $$
create procedure DosLetras()
begin 
set @letra = concat(upper("hola"),upper("adios"));
end $$
call DosLetras();
select @letra;
drop procedure DosLetras
