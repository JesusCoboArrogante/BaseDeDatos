insert into tienda (localidad,calle,telefono)
values
("madrid","c/ gran via",323456789),
("alcala","c/ calle mayor",634567890),
("getafe","avenida españa",945678901),
("leganes","c/ real",556789012),
("mostoles","plaza del pradillo",156789012);

insert into empleado (nombre, apellido,telefono, id_tienda)
values
("juan", "lopez",223456789,2),
("maria","martinez",887654321,2),
("jose","garcia",334567890,5),
("laura","perez",445678901,4),
("carlos","gomez",556789012,3),
("ana","ruiz",114748364,3),
("sofia","fernandez",778901234,5),
("miguel","diaz",289012345,1),
("lucia","sanchez",990123456,1),
("david","torres",001234567,4);



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
("accion",1),
("drama",2),
("aventura",2),
("aventura",3),
("accion",4),
("drama",4),
("comedia",5);

insert into cliente (nombre,apellido,telefono,edad,anyo_nacimiento)
values
("pedro","gonzalez",123456789,33,1991),
("ana","martinez",234567890,25,1999),
("david","sanchez",345678901,29,1995),
("laura","gonzalez",456789012,15,2010),
("carlos","perez",567890123,37,1987),
("maria","ruiz",678901234,48,1976),
("jorge","fernandez",789012345,22,2002),
("claudia","diaz",214748364,17,2007),
("elena","sanchez",901234567,35,1989),
("pablo","torres",912345678,27,1997);



insert into stock (id_stock,id_pelicula, total)
values 
(1,1,25),
(2,2,25),
(3,3,25),
(4,4,25),
(5,5,25);



insert into alquiler (id_cliente, id_stock,fx_adquisicion, fx_devolucion,cantidad,devuelta)
value
(3,5,"2023-12-10","2023-12-20",1,1),
(8,1,"2023-12-05","2023-12-15",3,0),
(7,2,"2023-11-20","2023-11-30",2,1),
(1,4,"2023-11-10","2023-11-20",2,0),
(9,3,"2023-11-05","2023-11-15",1,0);


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

insert into tiendaalquiler (id_tienda,id_alquiler)
value 
(1,2),
(3,5),
(4,1),
(1,1),
(2,4);