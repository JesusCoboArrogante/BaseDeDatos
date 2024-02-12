use bdbiblio;
insert into socio (cNIF, cNombre, cApellido, cDireccion, nTelefono, dNacimiento, dAlta)
values 
 ("0079521T", "Paula", "Sanz","C/uno, 10" ,  619554687, "1983-09-13","2012-09-20"),
 ("0965381B", "Jose Luis", "Garcia", "C/dos, 11" , 667859621, "1963-02-05","2011-09-14"),
 ("3854698X", "Javier", "Peinado", "C/tres, 12" ,666932541, "1978-10-24","2009-05-05"),
 ("0078921T", "Ruth", "Lazaro", "C/cuatro, 13" ,689330247, "1981-05-15","2013-09-04");
 
 insert into autor (nCodAutor, cNombre, cApellido)
 values
 (7191948,	"George", "Richard"),
 (10191892,	"John",	"Ronald"), 
 (12071971,	"Laura", "Gallego"),
 (20111947,	"Stephen", "King");
 

 insert into pais (cCodPais,cNombre)
 values
 (826, "reino unido"),
 (840, "estados unidos"),
 (724,"espana");
 
 
 insert into editorial (nCodEditorial,cNombre,direccion,cCodPais)
 values
 (72420,"salamandra","Salamanca", 724),
 (82608,"Hurst","London", 826),
 (84002, "Bancroft Press", "Los angeles", 840);
 
describe libro;
insert into libro (nCodLibro,cTitulo,dPublicacion,nCodEditorial)
values 
(978846,"dos velas para el diablo",2008,72420),
(978001,"el hobbit",1920,82608),
(978345, "IT", 1986,84002 ),
(978000, "juegos de tronos",1996,72420);


 
 
describe ejemplar;
insert ejemplar (cSignatura,nCodLibro)
values
("JDT",978000),
("EH",978001),
("IT",978345 ),
("DVPED",978846);

insert tema (nCodTema, cNombre)
values
(1,"Terro"),
(2,"fantasia"),
(3,"aventura" ),
(4,"juvenil");

describe ejemplarsocio;
insert autorpais (nCodAutor,cCodPais)
value 
(7191948,840),
(10191892,826),
(12071971,724),
(20111947,840);

insert ejemplarsocio(cSignatura,cNIF,dPrestamo)
value
("JDT","0078921T", "2024-01-01"),
("EH", "0079521T", "2024-01-02");

insert libroautor(nCodLibro, nCodAutor)
value 
(978000,7191948),
(978001,10191892),
(978345,12071971),
(978846,20111947);



 
 
 
 
 
