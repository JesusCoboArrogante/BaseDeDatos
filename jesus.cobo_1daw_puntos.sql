delimiter //
create trigger puntos
after  insert on partido 
for each row 
begin 
	declare  local_uno int;
    declare visitante_dos int;
    set local_uno = cast(substring_index(new.resultado,'-',1)as unsigned);
    set visitante_dos = cast(substring_index(new.resultado,'-',-1)as unsigned);
    if local_uno > visitante_dos then
		update equipo set puntos = puntos + 3 where id_equipo = new.local;
	elseif local_uno < visitante_dos then
		update equipo set puntos = puntos + 3 where id_equipo = new.visitante;
	else
		update equipo set puntos = puntos + 1 where id_equipo = new.local;
        update equipo set puntos = puntos + 1 where id_equipo = new.visitante;
	end if;
end //

insert into partido (local,visitante,resultado,fecha,arbitro) values
(1,2,"200-300","2011-09-15",7);


