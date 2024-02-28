create database ejercicio01;
use ejercicio01;
create table Tcliente (
id_cliente int auto_increment primary key,
nombre varchar (20),
apellido varchar (20),
email varchar (254)
);

create table Torden(
id_orden int primary key ,
id_cliente int,
foreign key (id_cliente) references Tordenes (id_cliente),
fecha date
);

create table Tproducto(
id_producto int auto_increment primary key,
nombre varchar(50),
precio double 
)

drop table tordenes