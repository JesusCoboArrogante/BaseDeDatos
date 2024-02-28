select * from jugador
where equipo = 3
order by apellido;

select * from jugador
where posicion like "P%"
order by id_jugador;

select * from jugador 
where altura > 2.0 and salario < 70000;

select * from partido 
where month(fecha) = 02;

select count(ciudad), ciudad from equipo
group by ciudad;

select * from partido 
order by local, fecha;

select * from jugador
where apellido like "j%" and apellido regexp '([aeiouAEIOU].*){2,}';

select  partido.*, equipo.nombre, jugador.nombre from partido
inner join  equipo on partido.local or partido.visitante = equipo.id_equipo 
inner join jugador on equipo.id_equipo = jugador.equipo
WHERE fecha = (SELECT MAX(fecha) FROM partido);


select * from jugador 
where altura = (select max(altura) from partido);

/*lunes*/
select distinct  jugador.* from partido
inner join equipo on partido.local or partido.visitante = equipo.id_equipo
inner join jugador on equipo.id_equipo  = jugador.equipo
where 

