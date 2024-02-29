
insert into tcliente (nombre, apellido, email) values
('juan', 'perez', 'juan@example.com'),
('maria', 'lopez','maria@example.com'),
('carlos', 'garcia', 'carlos@example.com');

insert into torden (id_cliente, fecha) values
(1, '2024-02-28'),
(1,'2024-02-29'),
(2, '2024-03-01');

insert into tproducto (nombre, precio) values 
('camiseta', 2.00),
('pantalon', 35.00),
('zapatillas', 50.00);

select * from tproducto 
;