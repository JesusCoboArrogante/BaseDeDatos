use examen;
/*ejercicio01*/
select max(extel) from temple;

/*ejercicio02*/
select nomem from temple
where antiguedad <= 38;

/*ejercicio03*/
Select  sum(numhi), sum(salar), sum(comis), count(*) from temple
inner join tdepto on temple.numde = tdepto.numde
where tidir = "f";
/*ejercicio04*/
update temple
set FECIN = "1988-05-03"
where numem = 430;

/*ejercicio05*/
select numem, nomem, fecna from temple
where numem = 110;

/*ejercicio06*/
select FECNA  from temple
where month(fecna) = 02
and day(fecna) = 19;

/*ejercicio07*/
select numem, numde, nomem, year(now())-year(fecna), year(now())-year(fecin) from temple
where numde = 112 or numde = 111
order by numde, nomem asc, year(now())-year(fecna) asc, year(now())-year(fecin) asc;

/*ejercicio08*/
select numhi, max(salar), min(salar)from temple 
group by numhi 
having  count(nomem) > 1 and max(salar) > 200 and numhi>0;

select DISTINCT tdepto.numde, temple.extel  from tdepto 
inner join temple on tdepto.numde = temple.numde
where nomde not like 'DIRECC%' and nomde not like 'Sector%' ;


select *from tdepto;
select *from temple

