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


insert into pelicula (nombre,anyo,edad)
values 
("matrix",1999,18),
("titanic",1997,13),
("el rey leon",1994,0),
("el padrino",1972,18),
("forrest gump",1994,13),
("lista de shindler",1993,18),
("toy story",1995,0),
("pulp fiction",1994,18),
("el señor de los anillos la comunidad del anillo",2001,13),
("la vida es bella",1997,13);


insert into genero (id_genero)
values
("accion"),
("aventura"),
("ciencia ficcion"),
("comedia"),
("documentales"),
("drama"),
("fantasia"),
("musicales"),
("suspense"),
("terror");

insert into generopelicula (id_genero,id_pelicula)
values 
("comedia",1),
("drama",2),
("accion",3),
("aventura",4),
("ciencia ficcion",5),
("fantasia",6),
("musicales",7),
("suspense",8),
("terror",9),
("comedia",10);

insert into cliente (nombre,apellido,numero_telefono,edad,anyo_nacimiento)
values
("pedro","gonzalez",123456789,33,1991),
("ana","martinez",234567890,25,1999),
("david","sanchez",345678901,29,1995),
("laura","gonzalez",456789012,14,2010),
("carlos","perez",567890123,37,1987),
("maria","ruiz",678901234,48,1976),
("jorge","fernandez",789012345,22,2002),
("claudia","diaz",214748364,17,2007),
("elena","sanchez",901234567,35,1989),
("pablo","torres",912345678,27,1997);

insert into tipopelicula (id_pelicula, num_peliculas,id_tienda, peliculas_alquiladas)
values 
(1,5,1,0),
(2,5,1,0),
(3,5,1,0),
(4,5,1,0),
(5,5,1,0),
(6,5,1,0),
(7,5,1,2),
(8,5,1,0),
(9,5,1,0),
(10,5,1,0),
(1,5,2,0),
(2,5,2,0),
(3,5,2,1),
(4,5,2,0),
(5,5,2,0),
(6,5,2,0),
(7,5,2,0),
(8,5,2,0),
(9,5,2,0),
(10,5,2,0),

(1,5,3,3),
(2,5,3,0),
(3,5,3,0),
(4,5,3,2),
(5,5,3,0),
(6,5,3,0),
(7,5,3,0),
(8,5,3,0),
(9,5,3,0),
(10,5,3,0),

(1,5,4,0),
(2,5,4,0),
(3,5,4,0),
(4,5,4,0),
(5,5,4,0),
(6,5,4,4),
(7,5,4,0),
(8,5,4,1),
(9,5,4,0),
(10,5,4,0),

(1,5,5,0),
(2,5,5,1),
(3,5,5,0),
(4,5,5,0),
(5,5,5,0),
(6,5,5,0),
(7,5,5,0),
(8,5,5,0),
(9,5,5,0),
(10,5,5,0);


insert into alquiler (id_cliente, id_tipopelicula,fx_adquisicion, fx_devolucion,id_tienda,cantidad,devuelta)
value
(3,5,"2023-12-10","2023-12-20",1,1,1),
(8,1,"2023-12-05","2023-12-15",3,3,0),
(5,9,"2023-12-01","2023-12-11",2,1,1),
(2,6,"2023-11-25","2023-12-10",4,4,0),
(7,2,"2023-11-20","2023-11-30",5,2,1),
(4,7,"2023-11-15","2023-11-25",1,3,1),
(1,4,"2023-11-10","2023-11-20",3,2,0),
(9,3,"2023-11-05","2023-11-15",2,1,0),
(6,8,"2023-11-01","2023-11-11",4,2,1);

select * from alquiler

