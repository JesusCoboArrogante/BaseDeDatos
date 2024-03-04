create database netflix;
use netflix;

create table customers(
customer_id int (10) primary key,
last_name varchar (25) not null,
first_name varchar (25) not null,
home_phone varchar (12) not null,
address varchar (100) not null,
city varchar (30) not null,
state varchar (2) not null,
email varchar (25) not null,
cell_phone varchar (12) not null
);
insert into customers (last_name, first_name, home_phone, address, state, email, cell_phone) values
("Palombo", "Lisa", "716-270-2669", "123 Main St", "Buffalo", "NY", "palombo@ecc.edu","716-555-1212"),
("Smith  ","Michael","555-123-456","456 Elm Street     ","Los Angeles  ","CA    ","michael.smith@example.com", "555-789-0123"),
("Johnson","Sarah  ","123-456-789","789 Oak Avenue     ","San Francisco","CA    ","sarah.johnson@example.com", "123-456-7890"),
("García ","Carlos ","987-654-321","Calle Mayor, 101   ","Madrid       ","Madrid","carlos.garcia@example.com", "987-654-3210"),
("Chen   ","Ling   ","212-555-777","321 Pine Street    ","New York     ","NY    ","ling.chen@example.com    ", "212-555-7777"),
("Patel  ","Priya  ","718-999-888","9876 Elmwood Avenue","Jersey City  ","NJ    ","priya.patel@example.com  ", "718-999-8888"),
("Kim    ","Minho  ","213-444-555","4321 Maple Road    ","Los Angeles  ","CA    ","minho.kim@example.com    ", "213-444-5555");

create table movie(
title_id int (10) primary key auto_increment not null unique,
title varchar (60) not null,
description varchar(400) not null,
rating varchar (4) check rating in ("g","pg","pg13","r"),
category 
)
alter table customers
modify customer_id int(10) auto_increment