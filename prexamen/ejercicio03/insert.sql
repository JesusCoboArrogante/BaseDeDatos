insert into testudiante(a_nombre,apellido,fx_naci,grado,correo) values 
("Alicia"   ,"Smith"    ,"2008-05-10",5 ,"alicia.smith@example.com"),
("Roberto"  ,"Johnson"  ,"2009-07-15",4 ,"roberto.johnson@example.com"),
("Carlos"   ,"Williams" ,"2007-03-20",6 ,"carlos.williams@example.com"),
("Daisy"    ,"Brown"    ,"2006-11-25",7 ,"daisy.brown@example.com"),
("Emilia"   ,"Jones"    ,"2005-08-30",8 ,"emilia.jones@example.com"),
("Francisco","García"   ,"2010-01-05",3 ,"francisco.garcia@example.com"),
("Graciela" ,"Martínez" ,"2004-12-12",9 ,"graciela.martinez@example.com"),
("Enrique"  ,"Hernández","2003-09-15",10,"enrique.hernandez@example.com"),
("Iris"     ,"Young"    ,"2002-07-20",11,"iris.young@example.com"),
("Juan"     ,"King"     ,"2001-05-25",12,"juan.king@example.com"),
("Lila"     ,"Lee"      ,"2011-08-01",2 ,"lila.lee@example.com"),
("Miguel"   ,"Nguyen"   ,"2000-10-05",13,"miguel.nguyen@example.com"),
("Nora"     ,"Walker"   ,"1999-04-15",14,"nora.walker@example.com"),
("Óscar"    ,"Pérez"    ,"1998-02-20",15,"oscar.perez@example.com"),
("Pilar"    ,"Scott"    ,"1997-06-30",16,"pilar.scott@example.com");


insert into tprofesor(p_nombre,apellido,fx_naci,materia_imp,exp,correo) values
("Juan","Smith","1978-03-10",8,15,"juan.smith@example.com"),
("Emilia","Johnson","1975-05-15",4,16,"emilia.johnson@example.com"),
("Miguel","Williams	","1980-07-20",	6,14,"miguel.williams@example.com"),
("Sara","Brown","1972-11-25",11 ,18,"sara.brown@example.com"),
("David","Jones","1985-08-30",9	,10	,"david.jones@example.com"),
("Jennifer","García","1970-01-05",2	,20	,"jennifer.garcia@example.com"),
("Roberto","Martínez","1973-12-10",	5,19,"roberto.martinez@example.com"),
("Linda","Hernández	","1988-09-15",	1,12,"linda.hernandez@example.com"),
("Jaime","Young","1977-07-20",10,17,"jaime.young@example.com"),
("Jessica","King","1983-05-25",12,11,"jessica.king@example.com"),
("Cristóbal","Lee","1989-08-01",7,9,"cristobal.lee@example.com"),
("María","Nguye","1976-10-05",3,21,"maria.nguyen@example.com");

insert into tasiginatura (a_nombre,descripcion) values
("Matemáticas","Curso de matemáticas básicas"),
("Lengua","Curso de lengua y literatura"),
("Ciencias","Curso de ciencias naturales"),
("Historia","Curso de historia y geografía"),
("Arte","Curso de arte y expresión artística"),     
("Educación Física","Curso de educación física y deportes"),
("Música","Curso de música y apreciación musical"),
("Informática ","Curso de informática y tecnología de la información"),
("Biología","Curso de biología y ciencias naturales"),
("Física","Curso de física y ciencias naturales"),
("Química","Curso de química y ciencias naturales"),
("Geografía","Curso de geografía y ciencias sociales"),
("Economía","Curso de economía y educación financiera");

insert into tmatricula(id_estudiante,id_asignatura,año_escolar) values
(13	,8  ,2024),
(2	,4  ,2024),
(9	,6  ,2024),
(14	,11  ,2024),
(7	,9  ,2024),
(8	,2  ,2024),
(10	,5  ,2024),
(5	,1  ,2024),
(1	,10  ,2024),
(6	,12  ,2024),
(11	,7  ,2024),
(12	,3  ,2024),
(3	,8  ,2024),
(4 	,4  ,2024),
(15	,6  ,2024);

insert into tcalificacion (id_matricula,calificacion) values
(10,90),
(6,85),
(4,95),
(14,88),
(3,92),
(7,87),
(1,91),
(12,89),
(8,94),
(15,86),
(2,93),
(9,90),
(5,88),
(13,85),
(11,91);

insert into tprofesor_asignatura (id_profesor, id_asignatura) values
(1,8),
(2,4),
(3,6),
(4,11),
(5,9),
(6,2),
(7,5),
(8,1),
(9,10),
(10,12),
(11,7),
(12,3);

