create database ejercicio01;
use ejercicio01;
create table Tcliente (
id_cliente int auto_increment primary key,
nombre varchar (20),
apellido varchar (20),
email varchar (254)
);

create table Torden(
id_orden int primary key auto_increment ,
id_cliente int,
foreign key (id_cliente) references Tcliente (id_cliente) ON DELETE CASCADE,
fecha date
);

create table Tproducto(
id_producto int auto_increment primary key,
nombre varchar(50),
precio double 
);

create table torden_productor(
	id_orden int, 
    id_producto int,
    cantidad int,
    primary key (id_orden, id_producto),
    foreign key (id_orden) references Torden (id_orden) ON DELETE CASCADE,
    foreign key (id_producto) references Tproducto (id_producto)ON DELETE CASCADE

)
