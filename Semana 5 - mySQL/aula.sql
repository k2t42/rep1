create database if not exists colegio;

use  colegio;

create table if not exists alumno(
id int unsigned primary key auto_increment,
nombre varchar(50) not null,
apellido1 varchar(50) not null,
apellido2 varchar(50) 
);

create table if not exists profesor (
id int unsigned primary key auto_increment,
nombre varchar(50) not null,
apellido1 varchar(50) not null,
apellido2 varchar(50) 
);

create table if not exists asignatura (
id int unsigned primary key auto_increment,
nombre varchar(50) not null,
horas varchar(5) not null,
idProfesor int unsigned not null,
foreign key (idProfesor) references profesor (id)
on delete no action
);

create table if not exists alumno_cursa_asignatura (
id int unsigned primary key auto_increment,
fechaInicio date not null,
fechaFin date not null,
idAsignatura int unsigned not null,
foreign key (idAsignatura) references asignatura (id)
on delete no action,
idAlumno int unsigned not null,
foreign key (idAlumno) references alumno (id)
on delete no action
);

show tables;

insert into alumno (nombre, apellido1, apellido2)
values ('Prince','William','Windsor'),
('Harry','Potter',null),
('Fernando','Fernández','Díaz'),
('Matilda','Worm','Wood');

insert into profesor (nombre, apellido1, apellido2)
values ('Albus','Wulfric','Dumbledore'),
('Charles','Xavier',null);

insert into asignatura (nombre, horas, idProfesor)
values ('Historia de la magia','120',1),
 ('Literatura','80',1),
 ('Telequinesis','130',2);
 
 
insert into alumno_cursa_asignatura (fechaInicio, fechaFin, idAsignatura, idAlumno)
values ('2022-09-01','2023-06-30',1,1);

insert into alumno_cursa_asignatura (fechaInicio, fechaFin, idAsignatura, idAlumno)
values ('2022-09-01','2023-06-30',3,1),
('2022-09-01','2023-06-30',2,2),
('2022-09-01','2023-06-30',1,3),
('2022-09-01','2023-06-30',3,3),
('2022-09-01','2023-06-30',1,4),
('2022-09-01','2023-06-30',3,4);

insert into alumno_cursa_asignatura (fechaInicio, fechaFin, idAsignatura, idAlumno)
values ('2022-09-01','2023-06-30',1,2),
('2022-09-01','2023-06-30',3,2);

show tables;

describe alumno_cursa_asignatura;

select * from alumno_cursa_asignatura;

select nombre, apellido1 
from alumno;

select * 
from profesor;

select * 
from alumno 
where apellido1 = 'Potter' or apellido2 like '%Potter%';

select avg (horas) from asignatura;

select * 
from asignatura 
where (horas) between 100 and 150 and profesor (id) =1; 

select * 
from asignatura
where horas = (
select max (horas) from asignatura
);

select *
from alumno_cursa_asignatura 
where idAsignatura = 1;

select *
from asignatura
where horas = (
select min (horas) from asignatura
);

insert into profesor (nombre, apellido1, apellido2)
values ('Agatha','Troncha','Toro'),
('Severus','Snape',null);

set SQL_SAFE_UPDATES = 0;

UPDATE profesor SET apellido2 = 'No tiene segundo apellido' WHERE apellido2 is null;

describe profesor;
select * from profesor;

insert into asignatura (nombre, horas, idProfesor)
values ('Pociones','110',4),
 ('Desarrollo Humano','140',3);
 
 delete from profesor where id = 4;
 
 DELETE FROM profesor ORDER BY id DESC LIMIT 1;

DELETE FROM asignatura ORDER BY id DESC LIMIT 1;

select *
from asignatura a inner join profesor p
on (a.idProfesor = p.id);

select a.nombre, a.horas, p.nombre, p.apellido1, p.apellido2
from asignatura a inner join profesor p
on (a.idProfesor = p.id)
where a.nombre like '&a&';






