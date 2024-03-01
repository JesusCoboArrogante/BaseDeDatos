insert into tlibro (titulo, autor, año, precio) values
("el alquimista", "paulo coelho", 1988, 20.99),
("cien años de soledad", "gabriel garcia marquez", 1967, 15.50),
("don quijote de la mancha", "miguel de cervantes", 1605, 25.00),
("Harry Potter y la piedra filosofal","J.K. Rowling", 1997, 18.99),
("Matar a un ruiseñor","Harper Lee", 1960, 22.50),
("Fahrenheit 451","Ray Bradbury", 1953, 17.75);

insert into tcliente (nombre, email, direccion) values
("Juan Pérez","juan@example.com","Calle 123, Ciudad X"),
("María López","maria@example.com","Av. Principal, Ciudad Y"),
("Carlos Martínez","carlos@example.com","Calle Central, Ciudad Z"),
("Laura Gómez","laura@example.com","Av. Libertad, Ciudad W"),
("Alejandro Ruiz","alejandro@example.com","Calle Mayor, Ciudad V");

insert into tventas (id_libro, id_cliente, fecha, cantidad) values
(2,3,"2024-01-15",2),
(4,1,"2024-02-01",1),
(6,5,"2024-02-10",3),
(1,2,"2024-02-20",1),
(5,4,"2024-03-05",2);
