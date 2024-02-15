/* Cambiamos las pesetas a euros */
set sql_safe_updates = 0;

/* en la tabla temple */
update temple
set salar = (salar * 1000) / (166.386);

update temple
set comis = (comis * 1000) / (166.386);
