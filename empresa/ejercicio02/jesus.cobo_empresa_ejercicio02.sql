use examen;
/*ejercicio01*/
select max(extel) from temple;

/*ejercicio02*/
select nomem from temple
where antiguedad <= 38;

Select  numhi, sum(salar), sum(comis), count(*) from temple
inner join tdepto on temple.numde = tdepto.numde
where tidir = "f";

select *from tdepto;
select *from temple

