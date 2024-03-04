/*1. Agrega un nuevo estudiante a la tabla Estudiante con información ficticia.*/
select * from testudiante;
insert into testudiante (a_nombre, apellido,fx_naci,grado,correo) values
("jesus","cobo","1997-06-12",1,"jesus.cobo@example.com");

/*2. Actualiza el correo electrónico del estudiante con id_estudiante igual a 3 en la tabla Estudiante.*/
update testudiante set correo = "carl.williams@example.com"
where id_estudiante = 3;

/*3. Elimina el estudiante con id_estudiante igual a 10 de la tabla Estudiante.*/
delete from testudiante
where id_estudiante = 10;

/*4. Selecciona todos los estudiantes de la tabla Estudiante cuyo apellido comience con "S".*/
select apellido from testudiante
where apellido like "S%"; 

/*5.Encuentra todos los estudiantes de la tabla Estudiante que están inscritos en una asignatura impartida por un profesor llamado "Emilia Johnson". */
SELECT testudiante.e_nombre, tprofesor.p_nombre, tasignatura.a_nombre  FROM tmatricula
INNER JOIN testudiante ON tmatricula.id_estudiante = testudiante.id_estudiante
INNER JOIN tasignatura ON tmatricula.id_asignatura = tasignatura.id_asignatura
INNER JOIN tprofesor ON tasignatura.id_asignatura = tprofesor.materia_imp
WHERE tprofesor.p_nombre = "Emilia";

/*6. Agrega una nueva columna llamada telefono a la tabla Estudiante para almacenar los números de teléfono de los estudiantes*/
alter table testudiante add telefono varchar(20);
update  testudiante set telefono = "555-876-5432"
where id_estudiante = 1;
select * from testudiante;

/*7. Incrementa en 1 el nivel de grado de todos los estudiantes en la tabla Estudiante que tengan una fecha de nacimiento posterior a 2005.*/
update testudiante set grado = grado +1;
select * from testudiante;

/*8. Selecciona todos los estudiantes de la tabla Estudiante que estén en el nivel de grado 7 y cuya fecha de nacimiento sea anterior a 2006.*/
select * from testudiante
where grado = 7 
and
year(fx_naci) < 2009;

/*9. Une la tabla Estudiante con la tabla Matricula y selecciona los nombres de los estudiantes junto con las asignaturas en las que están inscritos.*/
select * from tmatricula;
select testudiante.e_nombre, tasignatura.a_nombre from tmatricula
inner join testudiante on testudiante.id_estudiante = tmatricula.id_estudiante
inner join tasignatura on tasignatura.id_asignatura = tmatricula.id_asignatura;

/*10. Selecciona los nombres de los primeros 5 estudiantes de la tabla Estudiante ordenados alfabéticamente por apellido..*/
select * from testudiante
where id_estudiante < 6
order by apellido;

/*11. Incrementa en 1 el nivel de grado de todos los estudiantes en la tabla Estudiante que estén inscritos en una asignatura impartida por un profesor con más de 10 años de experiencia.*/
update  testudiante 
INNER JOIN tmatricula ON tmatricula.id_estudiante = testudiante.id_estudiante
INNER JOIN tasignatura ON tmatricula.id_asignatura = tasignatura.id_asignatura
INNER JOIN tprofesor ON tprofesor.materia_imp = tasignatura.id_asignatura
set grado = grado + 1
WHERE tprofesor.materia_imp > 10;

/*12. Elimina todas las matrículas de la tabla Matricula para un estudiante específico.*/
delete from tmatricula 
where tmatricula.id_estudiante = 1;

/*13. Une la tabla Estudiante con la tabla Asignatura y selecciona los nombres de los estudiantes junto con las asignaturas que contengan la palabra "ciencias".*/
select * from tmatricula;
select testudiante.e_nombre, tasignatura.a_nombre from tmatricula
inner join testudiante on testudiante.id_estudiante = tmatricula.id_estudiante
inner join tasignatura on tasignatura.id_asignatura = tmatricula.id_asignatura
where tasignatura.a_nombre like "c%";

/*14. Une la tabla Estudiante con la tabla Profesor y muestra los nombres de los estudiantes junto con los nombres de los profesores que tengan menos de 15 años de experiencia*/
SELECT testudiante.e_nombre, tprofesor.p_nombre   FROM tmatricula
INNER JOIN testudiante ON tmatricula.id_estudiante = testudiante.id_estudiante
INNER JOIN tasignatura ON tmatricula.id_asignatura = tasignatura.id_asignatura
INNER JOIN tprofesor ON tasignatura.id_asignatura = tprofesor.materia_imp
WHERE tprofesor.exp < 15;
select * from tprofesor