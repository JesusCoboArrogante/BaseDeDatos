insert into empleado (nombre, apellido,telefono)
values
("juan", "lopez",123456789),
("maria","martinez",987654321),
("jose","garcia",234567890),
("laura","perez",345678901),
("carlos","gomez",456789012),
("ana","ruiz",214748364),
("sofia","fernandez",678901234),
("miguel","diaz",789012345),
("lucia","sanchez",890123456),
("david","torres",901234567);

insert into tienda (localidad,calle,telefono)
values
("madrid","c/ gran via",123456789),
("alcala","c/ calle mayor",234567890),
("getafe","avenida españa",345678901),
("leganes","c/ real",456789012),
("mostoles","plaza del pradillo",56789012);


insert into cuadrante(id_empleado, fecha, id_tienda)
values
(9,"2023-11-05",3),
(1,"2023-12-30",5),
(7,"2023-11-15",4),
(3,"2023-12-10",2),
(2,"2023-12-20",1),
(4,"2023-12-05",4),
(10,"2023-11-01",2),
(6,"2023-11-25",1),
(8,"2023-11-10",5),
(5,"2023-12-02",3);

insert into (nombre,anyo,edad)


select cuadrante.fecha,cuadrante.id_tienda, empleado.nombre
from cuadrante
join empleado on cuadrante.id_empleado = empleado.id_empleado 

