use examen;
/*jesus oscar cobo arrogante ejercicio 2.1, le añado salar y numhi*/
select nomem  , salar, numhi from temple
where numhi > 2
order by salar desc, nomem asc;

/*jesus oscar cobo arrogante ejercicio 2.2 */
select tdepto.numde, "departamento de " as departamento,tdepto.nomde,temple.nomem from tdepto
inner join temple on tdepto.numde = temple.numde
where temple.salar < (select (salar/0.2) - salar from temple);

/*jesus oscar cobo arrogante ejercicio 2.3 en el select he añadidio el format para que tenga 2 decimales y he creado un alias*/
select numem, nomem, format(salar + comis /12, 2)  as salario_bruto from temple
where salar + comis /12 > 300;

/*jesus oscar cobo arrogante ejercicio 2.4*/
select salar from temple
group by numde
having  avg(salar/12) >= 300;

/*jesus oscar cobo arrogante ejercicio 2.5*/
select * from temple;
select nomem, format(salar + comis,2)as salario_total from temple
where salar + comis > 300;

/*jesus oscar cobo arrogante ejercicio 2.6*/
select numde, avg (ye2024-year(fecin)) as año_media from temple
group by numde
having numde between 111 and 112;

/*jesus oscar cobo arrogante ejercicio 2.9*/
select   tcentr.numce,tcentr.nomce,tcentr.senias from tdepto
inner join temple on temple.numde = tdepto.numde
inner join tcentr on tcentr.numce = tcentr.numce
where temple.numde between 110 and 112;

/*jesus oscar cobo arrogante ejercicio 2.10*/
create view ejercicio210 as
select temple.numem,temple.numde,temple.fecna ,temple.salar, ifnull(temple.comis,0) from temple
inner join tdepto on temple.numem = tdepto.direc;

select * from ejercicio210;
set sql_safe_updates=0;

delete from ejercicio210
where year(fecna) < 1966
