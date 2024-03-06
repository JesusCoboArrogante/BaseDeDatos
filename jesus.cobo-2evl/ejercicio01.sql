/*ejercicio01*/
create database dbprovperson;
use dbprovperson;
create table provincias(
cod_prov int (2) primary key unique not null,
nom_prov char (15) unique not null
); 
create table persona(
dni int (8) primary key unique not null,
direccion varchar(25) not null,
poblacion varchar (25) not null, 
cod_prov int (2) not null,
foreign key (cod_prov) references provincias (cod_prov) 
);

/*B*/
alter table persona add column edad int (3) check (edad > 20 and edad < 65);

/*C*/
alter table persona modify column dni char (9);


/*D*/
insert into provincias values
(10,"Caceres"),
(28, "Madrid");

insert into persona values
("12345678A","c/madrileña","fuenlabrada,", 28, 28),
("87654321B","c/personaDeCaceres","no se",10, 35);





