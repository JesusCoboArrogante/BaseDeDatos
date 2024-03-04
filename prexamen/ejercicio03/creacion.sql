create database ejercicio03;
use ejercicio03;

create table testudiante(
id_estudiante int primary key auto_increment,
a_nombre varchar (10),
apellido varchar (10),
fx_naci date,
grado int,
correo varchar (25)
);

create table tprofesor(
id_profesor int primary key	auto_increment,
p_nombre varchar (10),
apellido varchar (10),
fx_naci date,
materia_imp varchar(11),
exp int,
correo varchar (25)
);

create table tasiginatura(
id_asignatura int primary key auto_increment,
a_nombre varchar (10),
descripcion varchar (50)
);

create table tmatricula(
id_matricula int primary key auto_increment,
id_estudiante int, 
foreign key (id_estudiante) 
references testudiante(id_estudiante) 
on update cascade 
on delete cascade ,
id_asignatura int,
foreign key (id_asignatura) 
references tasiginatura(id_asignatura) 
on update cascade 
on delete cascade

);

create table tcalificacion(
id_calificacion int primary key auto_increment,
id_matricula int,
foreign key  (id_matricula) 
references tmatricula(id_matricula)
on update cascade 
on delete cascade,
calificacion int
);



