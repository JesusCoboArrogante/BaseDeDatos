use liga;
/*5.1 A)*/
delimiter //
create procedure ayo()
begin
select year(now());
end //
call ayo;

/*5.2 B)*/
set @usuario = 0;
set  @usuario1 = 0
/*5.3 C)*/
delimiter $$
create procedure suma ()
begin 
set @usuario = @usuario + 1;
end $$
call suma();
select @usuario;

/*5.4 D)*/
delimiter $$
create function f_suma () returns Int
begin  
set @usuario = @usuario +1;
return @usuario;
end $$
select f_suma();

/*5.5 F)*/

