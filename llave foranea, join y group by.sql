-- Active: 1653950035012@@127.0.0.1@3306@holamundo
create table product (
id int not null auto_increment,
name varchar(50) not null,
created_by int not null,
marca varchar(50) not null,
primary key(id),
foreign key(created_by) references user(id)

);

rename tables products to product;
insert into product (name,created_by,marca)
value('ipad',1,'apple'),
('ipad',1,'apple'),
('iphone',1,'apple'),
('watch',2,'apple'),
('imac',1,'apple'),
('ipad mini',3,'apple'),
('macbook',2,'apple');

select*from product;
-- left join
select u.id, u.mail, p.name from user u left join product p on u.id = p.created_by;
-- right join
select u.id, u.mail, p.name from user u right join product p on u.id = p.created_by;
-- inner join (que tengan ambos datos)
select u.id, u.mail, p.name from user u inner join product p on u.id = p.created_by;
-- cross join (producto carteciano entre dos tablas)
select u.id, u.name, p.id, p.name from user u cross join product p;

-- group by
select count(id), marca from product group by marca;


