create database netflix;
use netflix;
create table customers(
customer_id int(10) primary key not null,
last_name varchar (25) not null,
first_name varchar (25) not null,
home_hone varchar (12) not null unique,
address varchar (100) not null,
city varchar (30) not null,
state varchar (2) not null,
email varchar (25) not null,
cell_phone varchar (12) unique not null
);

create table movie(
title_id int(10) primary key not null auto_increment,
title varchar(60) not null,
descriptions varchar(400) not null,
rating VARCHAR(4) NOT NULL,
CHECK (rating IN ('g', 'pg13', 'r')),
category VARCHAR(20) NOT NULL,
CHECK (category IN ('drama', 'comedy', 'action', 'scifi', 'documentary')),
release_date date not null
);

create table media(
media_id int (10) primary key,
format varchar(3) not null,
title_id int (10),
foreign key title_id referesy
)

select * from movie;
drop table movie