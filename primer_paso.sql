use bdbiblioteca;
create table TEditorial(
	nEditorialID integer(2)  auto_increment primary key,
    cNombre varchar (40) not null,
    nPaisID decimal (3.0) default 724
    , foreign key (nPaisID) references tpais (nPaisID)
    
);

create table TSocio(
cNIF char (9) not null unique primary key,
cNombre varchar (30) not null,
cApellido varchar (100),
cTelefono char (12) not null,
dNacimiento date not null,
dAlta date not null check (dAlta >= "2003-09-01")


);

create table Tprestamo(
cSignatura varchar (15) not null,
cNIF char (9) not null,
dPrestamo date not null,
primary key (cSignatura, cNIF, dPestamo)
)

/* cod libro titulo año */;

create table Tlibro(
cLibro int (6)  unique primary key,
ISBN int (13) unique not null,
titulo varchar (20) not null,
anio int (4)

)

create table Tejemplar(

ISBN int (13) unique not null
, foreign key (ISBN) references tlibro (ISBN)

)
