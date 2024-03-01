create database libreria;
use libreria;
create table tlibro(
id_libro int auto_increment primary key,
titulo varchar (50),
autor varchar (50),
año int,
precio double
);

create table tcliente(
id_cliente int auto_increment primary key,
nombre varchar (50),
email varchar (250),
direccion varchar (50)
);

create table tventas (
id_ventas int auto_increment primary key,
id_libro int,
foreign key (id_libro) references tlibro(id_libro) ON UPDATE CASCADE ON DELETE CASCADE,
id_cliente int,
foreign key (id_cliente) references tcliente (id_cliente) ON UPDATE CASCADE ON DELETE CASCADE,
fecha date,
cantidad int
);

