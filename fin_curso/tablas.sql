create database netflixclub;
use netflixclub;
create table empleado(
id_empleado  int auto_increment primary key,
nombre varchar (10) ,
apellido varchar (10),
telefono int (9) unique
);
create table tienda(
id_tienda int auto_increment primary key,
localidad varchar (10),
calle varchar (20),
telefono int (9) unique
);

create table cuadrante(
id_empleado int,
fecha date,
id_tienda int,
primary key(id_empleado,fecha),
foreign key (id_empleado) references empleado(id_empleado),
foreign key (id_tienda) references tienda(id_tienda)
);

create table pelicula (
id_pelicula int auto_increment primary key,
nombre varchar (20),
anyo int (4),
edad int (3)
);
create table genero (
id_genero varchar (10) primary key
);
alter table genero add constraint id_genero check(id_genero in ('accion', 'aventura', 'ciencia ficcion', 'comedia', 'documentales', 'drama', 'fantasia', 'musicales', 'suspense', 'terror'));

create table generoPelicula(
id_genero varchar (10),
id_pelicula int,
primary key (id_pelicula, id_genero),
foreign key (id_genero) references genero(id_genero),
foreign key (id_pelicula) references pelicula(id_pelicula)
);

create table tipoPelicula(
id_tipopelicula int auto_increment primary key,
id_pelicula int,
num_peliculas int (2),
peliculas_alquiladas int (2),
id_tienda int,
foreign key (id_tienda) references tienda(id_tienda),
foreign key (id_pelicula) references pelicula (id_pelicula)
);

create table cliente(
id_cliente int auto_increment primary key,
nombre varchar(10),
apellido varchar(10),
numero_telefono int (9),
edad int,
anyo_nacimiento year
);

create table alquiler(
id_alquiler int auto_increment primary key,
id_cliente int,
id_tipopelicula int,
fx_adquisicion date,
fx_devolucion date,
id_tienda int,
cantidad int (2),
devuelta int (2) default 0,
foreign key (id_tienda) references tienda(id_tienda),
foreign key (id_cliente) references cliente(id_cliente),
foreign key (id_tipopelicula) references tipopelicula (id_tipopelicula)
);
create table retrasos(
id_cliente int,
id_alquiler int,
dias int,
debido int,
primary key (id_cliente,id_alquiler)
);

