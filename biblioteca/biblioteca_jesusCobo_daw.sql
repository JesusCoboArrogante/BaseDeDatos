create database bdBiblio;
use bdBiblio;
create table Libro(
nCodLibro int (10) not null primary key,
cTitulo varchar (15) not null,
dPublicacion date not null
);




create table Autor(
nCodAutor int (10) not null primary key,
cNombre varchar (10) not null,
cApellido varchar (10) not null
);

create table Tema(
nCodTema int (10) not null primary key,
cNombre varchar (20) not null
);

create table Pais (
cCodPais char (3) not null primary key,
cNombre varchar (56) not null
);

create table Editorial(
nCodEditorial int (10) not null primary key,
cNombre varchar (10) not null,
direccion varchar (50) not null,
cCodPais char(3) not null,
foreign key (cCodPais) references Pais(cCodPais)
);



create table LibroAutor(
nCodLibro int (10) not null,
nCodAutor int (10) not null,
primary key (nCodLibro, nCodAutor),
foreign key (nCodLibro) references Libro(nCodLibro),
foreign key (nCodAutor) references Autor(nCodAutor)
);


create table AutorPais(
nCodAutor int (10) not null,
cCodPais char (3) not null,
primary key (nCodAutor,cCodPais),
foreign key (nCodAutor) references Autor(nCodAutor),
foreign key (cCodPais) references Pais(cCodPais)
);

create table ejemplar(
cSignatura char(10) not null primary key,
nCodLibro int(10) not null,
foreign key (nCodLibro) references Libro(nCodLibro)
);
create table Socio(
cNIF char(8) not null primary key,
cNombre varchar(10) not null,
cApellido varchar(10) not null,
cDireccion varchar(30) not null,
nTelefono int(9) not null,
dNacimiento date not null,
dAlta date not null
);

create table EjemplarSocio(
cSignatura char(10) not null,
cNIF char(8) not null,
dPrestamo date not null,
primary key(cSignatura,cNIF,dPrestamo)
);

alter table EjemplarSocio 
add constraint 
foreign key (cNIF) references Socio(cNIF),
add constraint
foreign key (cSignatura) references ejemplar(cSignatura);



alter table Libro
add nCodEditorial int (10) not null,
add constraint 
foreign key (nCodEditorial) references Editorial(nCodEditorial);



