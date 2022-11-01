-- Active: 1653950035012@@127.0.0.1@3306@holamundo
CREATE database holamundo;
SHOW databases;
use holamundo;
create table animales (
id int,
tipo varchar(255),
estado varchar(255),
primary key (id)
);
-- insert into animales (tipo,estado) values("chanchito","feliz");
alter table animales modify column id int auto_increment;

show create table animales;
CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
); 
insert into animales (tipo,estado) values("chanchito","feliz");
insert into animales (tipo,estado) values("dragon","feliz");
insert into animales (tipo,estado) values("felipe","triste");

select * from animales where id =1;
select * from animales where estado = "feliz" and tipo = "felipe";

update animales set estado = "feliz" where id = 3;

select * from animales;

delete from animales where estado = "feliz";

-- Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.

delete from animales where id = 3;

select* from animales;

