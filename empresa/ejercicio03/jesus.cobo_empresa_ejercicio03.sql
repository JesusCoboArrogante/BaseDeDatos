use examen;
/*ejercicio01*/ 

SELECT nomde, presu+presu/12*0.1*3  as "presupuesto medio mensual"
from tdepto
where (presu/12) * 9 > 5.0
order by nomde asc;

/*ejercicio02*/
select salar * 0.2, salar, comis
from temple
where salar*0.2 > comis;

/*ejercicio03*/
select numem, nomem, salar + comis as "salario total"
from temple
where salar + comis > 300.000;

/*ejercicio04*/
select  nomem, salar / numhi as porcentaje
from temple
where comis is null
and numhi > 0;

/*ejercicio05*/
select nomem , numhi + 2 as "invitaciones", numhi as "obsequito"
from temple
where numhi > 0
and nomem < "m"
order by nomem asc;

/*ejercicio06*/
select nomem
from temple
where comis is null
order by char_length(nomem) asc, nomem asc;

/*ejercicio07*/
select nomem, salar
from temple
where year(fecin) >= 1988

/*ejercicio08*/



select * from temple