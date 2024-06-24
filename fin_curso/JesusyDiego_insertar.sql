insert into tienda (localidad,calle,telefono)
values
("madrid","c/ gran via",612345678),
("alcala","c/ calle mayor",722345678),
("getafe","avenida españa",634567891), 
("leganes","c/ real",745678901),
("mostoles","plaza del pradillo",656789012);

insert into empleado (nombre, apellido,telefono, id_tienda)
values
("juan", "lopez",767890123,2),
("maria","martinez",678901234,2),
("jose","garcia",789012345,5),
("laura","perez",890123456,4),
("carlos","gomez",812345679,3),
("ana","ruiz",812345678,3),
("sofia","fernandez",923456789,5),
("miguel","diaz",834567890,1),
("lucia","sanchez",945678901,1),
("david","torres",856789012,4);



insert into horario(turno, entrada, salida)
values
("mañana", "09:00", "15:30"),
("tarde","15:30","22:00"),
("stock","22:00","00:00");


insert into pelicula (nombre,anyo,edad)
values 
("60 segundos",2000,16),
("el sargento de hierro",1986,18),
("harry potter y la priedra filosofal",2001,0),
("karate kid",1984,7),
("los 3 pequeños niñas",1994,7);



insert into genero (id_genero,nombre)
values
("AC","accion"),
("AV","aventura"),
("CF","ciencia ficcion"),
("CM","comedia"),
("DC","documentales"),
("DM","drama"),
("FT","fantasia"),
("MS","musicales"),
("SS","suspense"),
("TR","terror");

insert into generopelicula (id_genero,id_pelicula)
values 
("AC",1),
("DM",2),
("AV",2),
("AV",3),
("AC",4),
("DM",4),
("CM",5);

insert into cliente (nombre,apellido,telefono,edad,cumpleaños,autoriza)
values
("pedro","gonzalez",967890123,33,'1991-03-01',null),
("ana","martinez",878901234,25,'1999-05-01', null),
("david","sanchez",989012345,29,'1995-12-01',	null),
("laura","gonzalez",890123456,15,'2010-08-01',1),
("carlos","perez",901234567,37,'1987-10-01',null),
("maria","ruiz",712345678,48,'1976-06-01',null),
("jorge","fernandez",823456789,22,'2002-01-01',null),
("claudia","diaz",934567890,17,'2007-06-01', 5),
("elena","sanchez",845678901,35,'1989-01-01',null),
("pablo","torres",956789012,27,'1997-07-01',null);


insert into stock (id_stock,id_pelicula, total)
values 
(1,1,25),
(2,2,25),
(3,3,25),
(4,4,25),
(5,5,25);

insert into tiendastock (id_stock, id_tienda, num_peliculas, peliculas_alquiladas)
values
(1,1,5,3),
(1,2,5,0),
(1,3,5,0),
(1,4,5,0),
(1,5,5,0),

(2,1,5,0),
(2,2,5,0),
(2,3,5,2),
(2,4,5,0),
(2,5,5,0),

(3,1,5,0),
(3,2,5,0),
(3,3,5,0),
(3,4,5,1),
(3,5,5,0),

(4,1,5,0),
(4,2,5,0),
(4,3,5,0),
(4,4,5,2),
(4,5,5,0),

(5,1,5,1),
(5,2,5,0),
(5,3,5,0),
(5,4,5,0),
(5,5,5,0);




insert into alquiler (id_cliente, id_tiendastock,fx_adquisicion, fx_devolucion,cantidad,devuelta)
value
(3,21,"2023-12-10","2023-12-20",1,1),
(8,1,"2023-12-05","2023-12-15",3,0),
(7,8,"2023-11-20","2023-11-30",2,1),
(1,19,"2023-11-10","2023-11-20",2,0),
(9,8,"2023-11-05","2023-11-15",1,0);


insert into retrasos (id_alquiler, dias)
value
(2,1),
(3,15),
(5,3);


insert into empleadohorario (id_empleado, id_horario, fecha)
value 
(1,1,"2024-05-01"),
(2,2,"2024-05-01"),
(3,1,"2024-05-01"),
(4,2,"2024-05-01"),
(5,1,"2024-05-01"),
(6,2,"2024-05-01"),
(7,1,"2024-05-01"),
(8,2,"2024-05-01"),
(9,1,"2024-05-01"),
(10,2,"2024-05-01"),

(1,2,"2024-05-02"),
(2,1,"2024-05-02"),
(3,2,"2024-05-02"),
(4,1,"2024-05-02"),
(5,2,"2024-05-02"),
(6,1,"2024-05-02"),
(7,2,"2024-05-02"),
(8,1,"2024-05-02"),
(9,2,"2024-05-02"),
(10,1,"2024-05-02"),

(1,1,"2024-05-03"),
(2,2,"2024-05-03"),
(3,1,"2024-05-03"),
(4,2,"2024-05-03"),
(5,1,"2024-05-03"),
(6,2,"2024-05-03"),
(7,1,"2024-05-03"),
(8,2,"2024-05-03"),
(9,1,"2024-05-03"),
(10,2,"2024-05-03");




