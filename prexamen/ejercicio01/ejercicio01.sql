/*1.	¿Cuántos clientes hay en la base de datos?*/
		select count(*) from tcliente;
        
        
/*2.	Insertar un nuevo cliente en la tabla clientes.*/
		select * from tcliente;
		insert into tcliente (nombre, apellido,email) values
        ('jesus', 'cobo','jesus@example.com');
        
/*3.	¿Cuál es el nombre del cliente con id_cliente igual a 3?*/
		select nombre from tcliente
        where id_cliente = 3;
        
/*4.	¿Cuál es la cantidad promedio de productos por orden?*/
		select * from torden_productor;
		select ROUND(avg(cantidad))  from torden_productor;
        
/*5.	Insertar una nueva orden en la tabla ordenes.*/
		select * from torden;
		insert into torden (id_cliente,fecha) values
        (4,'2024-03-25');
        
/*6.	¿Cuál es el precio de la camiseta?*/
        select precio from tproducto
        where nombre = "camiseta";
        
/*7.	¿Cuál es la cantidad total de productos vendidos en todas las órdenes?*/
		select * from torden_productor;
		select sum(cantidad) from torden_productor;
        
/*8.	Modificar la fecha de una orden específica en la tabla ordenes.*/
		select * from torden;
		update torden set fecha = '2024-03-21'
        where id_cliente = 4;
		
/*9.	¿Cuál es la cantidad de zapatillas incluidas en la orden con id_orden igual a 3?*/
		select torden_productor.id_orden, tproducto.nombre, count(torden_productor.cantidad) as cantidad  from torden_productor
        inner join tproducto on torden_productor.id_producto = tproducto.id_producto
        inner join torden on torden_productor.id_orden = torden.id_orden
        where torden.id_orden = 3 and 
        tproducto.nombre = "zapatillas";
		
/*10.	¿Cuál es el nombre del cliente que realizó la orden con id_orden igual a 2?*/
		select tcliente.nombre from torden
        inner join tcliente on torden.id_cliente = tcliente.id_cliente
        where torden.id_orden = 2;
        
/*11.	Eliminar un cliente de la tabla clientes.*/
        delete from tcliente
        where id_cliente = 4;
        
/*12.	Modificar el apellido de un cliente específico en la tabla clientes.*/
		update tcliente set nombre = "carlos", tcliente.apellido = "arrogante"
        where tcliente.id_cliente = 3;
        select * from tcliente;
        
/*13.	¿Cuántas órdenes se realizaron en febrero de 2024?*/
		select count(*) from torden
        where month(fecha) = 2;
        select * from torden;
        
/*14.	¿Cuál es el precio total de la orden con id_orden igual a 1?*/
        select sum(tproducto.precio) from torden
        inner join torden_productor on torden.id_orden = torden_productor.id_orden
        inner join tproducto on torden_productor.id_producto = tproducto.id_producto
        where torden.id_orden = 1;
        
/*15.	Insertar un nuevo producto en la tabla productos.*/
        insert into tproducto(nombre, precio) values
        ("gorro", 3.50);
        
        
/*16.	¿Cuál es el nombre del cliente que realizó la orden más reciente?*/
		select tcliente.nombre from torden
        inner join tcliente on torden.id_cliente = tcliente.id_cliente
        where fecha = (select max(fecha) from torden);
       
/*17.	¿Cuál es el precio de un producto específico en la tabla productos?*/
		select tproducto.precio from tproducto
        where tproducto.nombre = "gorro";

/*18.	¿Cuál es la cantidad promedio de productos por orden?*/
		select format(avg(cantidad),2) from torden_productor
        group by id_orden;
        
/*19.	Eliminar un producto de la tabla productos.*/
		delete from tproducto
        where tproducto.id_producto = 4;
       
		
/*20.	Insertar un nuevo registro en la tabla productos_ordenes para asociar un producto a una orden con una cantidad específica.*/
        insert into torden (id_cliente, fecha) values
        (3,'2024-03-15');
         insert into torden_productor (id_orden, id_producto, cantidad) values
        (5,3,5);
        