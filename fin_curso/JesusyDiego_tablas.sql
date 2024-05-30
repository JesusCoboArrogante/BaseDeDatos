drop database netflixclub;
create database netflixclub;
use netflixclub;
create table tienda(
id_tienda int (2) auto_increment primary key,
localidad varchar (10),
calle varchar (20),
telefono int (9) unique
);

create table empleado(
id_empleado int (2)  auto_increment primary key,
nombre varchar (10) ,
apellido varchar (10),
telefono int (9) unique,
id_tienda int (2),
foreign key (id_tienda) references tienda(id_tienda)
on delete cascade
);

create table horario(
id_horario int (1) auto_increment primary key,
turno varchar (6),
entrada varchar (5),
salida varchar (5)
);
create table empleadoHorario(
id_empleado int (2),
id_horario int (1),
fecha date, 
primary key (id_empleado, fecha),
foreign key (id_empleado) references empleado (id_empleado)
on delete cascade,
foreign key (id_horario) references horario (id_horario)
on update cascade
);


create table pelicula (
id_pelicula int (2) auto_increment primary key,
nombre varchar (100),
anyo int (4) ,
edad int (3) not null
);

create table genero (
id_genero char (2) primary key,
nombre varchar (30) 
);


create table generoPelicula(
id_genero varchar (30),
id_pelicula int (2),
primary key (id_pelicula, id_genero),
foreign key (id_genero) references genero(id_genero)
on update cascade
on delete cascade,
foreign key (id_pelicula) references pelicula(id_pelicula)
on delete cascade
on update cascade
);

create table stock(
id_stock int (2) auto_increment primary key,
id_pelicula int (2),
total int (2)
);




create table cliente(
id_cliente int (2) auto_increment primary key,
nombre varchar(10),
apellido varchar(10),
telefono int (9) unique,
edad int not null,
mes_anyo  char (7) not null,
autoriza int (2),
check (edad >= 15),
foreign key (autoriza) references cliente(id_cliente)
);



create table alquiler(
id_alquiler int (2) auto_increment primary key,
id_cliente int (2),
id_stock int (2),
fx_adquisicion date,
fx_devolucion date,
cantidad int (2) default 1,
devuelta int (2) default 0,
foreign key (id_cliente) references cliente (id_cliente)
on delete cascade
on update cascade,
foreign key (id_stock) references stock (id_stock)
on delete cascade
on update cascade
);


create table retrasos(
id_retraso int (2) primary key auto_increment,
id_alquiler int (2),
dias int,
debido double (5,2) default 0.20,
foreign key (id_alquiler) references alquiler (id_alquiler)
on delete cascade
on update cascade
);

create table tiendastock (
id_tienda int,
id_stock int,
num_peliculas int,
peliculas_alquiladas int default 0,
primary key (id_tienda, id_stock),
foreign key (id_tienda) references tienda(id_tienda)
on delete cascade
on update cascade,
foreign key (id_stock) references stock(id_stock)
on delete cascade
on update cascade
);
 
