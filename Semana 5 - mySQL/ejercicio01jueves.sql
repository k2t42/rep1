create database if not exists ejercicios;

use ejercicios;

create table if not exists usuarios(
id integer unsigned primary key auto_increment,
dni varchar(15) unique not null,
telefono varchar(20) not null,
mail varchar(50) not null,
nombre varchar(50) not null,
apellido1 varchar(50) not null,
apellido2 varchar(50),
direccion varchar(250),
cp varchar(10),
pais varchar(30)
);

alter table usuarios drop column direccion;
alter table usuarios drop column cp;
alter table usuarios drop column pais;

create table if not exists direccion (
id integer unsigned primary key auto_increment,
direccion varchar(250),
cp varchar(10),
pais varchar(30),
idusuario integer unsigned not null,
foreign key (idusuario) references usuarios (id)
on delete cascade
);

insert into usuarios (dni, telefono, mail, nombre, apellido1, apellido2)
values ('279948941-9','993870144','ilethem0@google.com.au','Irvin','Lethem',null),
('748551874-7','497494899','kmungan1@howstuffworks.com','Kylie','Mungan',null),
('215649413-4','776631050','ydibbert2@businesswire.com','Yul','Dibbert',null),
('617064473-7','921948685','tmcgorley3@studiopress.com','Tamra','Mc Gorley',null),
('178988896-4','304168000','eimbrey4@cpanel.net','Elmira','Imbrey',null);


insert into direccion (direccion, cp, pais, idusuario)
values ('98339 Loftsgordon Road,Babakanbandung','83297','Indonesia',1),
('74641 Dwight Avenue,Bilar','44455','Philippines',2),
('9510 Milwaukee Street,Sumberejo','62965','Indonesia',3),
('8902 Doe Crossing Alley,Steinkjer','54756','Norway',4),
('8616 Stephen Hill,Charleston','51471','United States',5);


select nombre, apellido1, telefono
from usuarios
order by apellido1 asc;

SELECT COUNT(*), pais
FROM direccion
GROUP BY pais;

select *
from usuarios u inner join direccion d
on (u.id = idusuario);

alter table usuarios add column edad varchar(5);

update usuarios set edad = 32 where id = 1;
update usuarios set edad = 54 where id = 2;
update usuarios set edad = 22 where id = 3;
update usuarios set edad = 38 where id = 4;
update usuarios set edad = 45 where id = 5;

SELECT MAX(edad)
FROM usuarios;

select nombre, edad
from usuarios
where edad = (
	select max(edad) from usuarios
);

alter table usuarios drop column edad;

alter table usuarios add column edad int;

show tables;
