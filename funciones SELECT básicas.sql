-- Active: 1653950035012@@127.0.0.1@3306@holamundo
create table user (
id int not null auto_increment,
name varchar(50) not null,
edad int not null,
primary key (id)
);
alter table user add column mail varchar(100) not null;

insert into user(name, edad, mail) values ('oscar','25','oscar@gmail.com');
insert into user(name, edad, mail) values ('jose','10','jose@gmail.com');
insert into user(name, edad, mail) values ('julian','85','julian@gmail.com');
insert into user(name, edad, mail) values ('alfredo','7','alfredo@gmail.com');
insert into user(name, edad, mail) values ('gaston','28','gaston@hotmail.com');


select * from user limit 1;
select * from user where edad >= 15;
select * from user where edad >= 15 or mail ='alfredo@gmail.com';
select * from user where mail !='alfredo@gmail.com';
select * from user where edad between 10 and 90;
select * from user where mail like '%gmail%';

select * from user order by  edad asc;
select max(edad) as mayor from user;
select min(edad) as mayor from user;

select id, name from user;
select id, name as nombre from user;
-- count
select count(p.id), u.name from product p left join user u on u.id = p.created_by group by p.created_by;
select count(p.id), u.name from product p left join user u on u.id = p.created_by group by p.created_by
having count(p.id)>=2; 

-- eliminar tabla
drop table product;

SELECT * FROM `user`;