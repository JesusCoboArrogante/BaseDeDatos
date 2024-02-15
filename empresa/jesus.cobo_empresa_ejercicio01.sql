
/*ejercicio 01*/
alter table temple
add antiguedad int (2);

/*ejercicio 02*/
set sql_safe_updates=0;
update temple
set antiguedad = year(now()) - year(fecin);

/*ejercicio 03*/
create table temple2 as (select * from temple);

/*ejercicio 05*/
select distinct(temple.numem), temple.nomem
	from temple left join tdepto
   on  temple.numem = tdepto. direc
  WHERE tdepto.direc is null or tdepto.direc != temple.numem;
  
  /*ejercicio 06*/
select numde 
from temple
where numem = 110;
  
/*ejercicio 07*/
SELECT tcentr.numce, tcentr.senias 
FROM tcentr 
INNER JOIN tdepto ON tcentr.numce = tdepto.numce 
WHERE tdepto.numde IN (SELECT numde FROM temple WHERE numem = 110);

 
 /*ejercicio 08*/
 select nomde
 from tdepto
 where tidir = "f"
 order by nomde
 ;
 
 /*ejercicio 09*/
select ifnull(comis,0), nomem, salar
from temple
where numhi > 3; 

/*ejercicio 10*/
select salar, nomem
from temple
where numhi = 0
order by salar asc , nomem;
