create database ejercicio04;
use ejercicio04;

create table tdoctor (
id_doctor int primary key auto_increment,
d_nombre varchar (50),
especialidad varchar (50),
telefono int not null ,
correo_electronico varchar (50)
);

create table tpaciente (
id_paciente int primary key auto_increment,
p_nombre varchar (50),
edad int,
check (edad > 18),
sexo char(1)
check (sexo = "m" or sexo = "f"),
direccion text
);

create table tconsultas (
id_consulta int primary key auto_increment,
id_doctor int,
foreign key (id_doctor) 
references tdoctor (id_doctor)
 on update cascade
 on delete cascade,
id_paciente int,
foreign key (id_paciente)
references tpaciente(id_paciente)
on update cascade
on delete cascade,
fx_consulta date not null
);