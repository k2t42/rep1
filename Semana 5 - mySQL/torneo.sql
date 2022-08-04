create database if not exists torneo;

use torneo;

create table if not exists equipo (
id int unsigned unique primary key auto_increment,
nombre varchar (50) unique not null,
camiseta1 varchar (30) not null,
camiseta2 varchar (30) not null,
categoria enum ('primera','segunda','tercera') not null,
patrocinador varchar (250)
);

create table if not exists partido(
id int unsigned unique primary key auto_increment,
arbitro varchar (120) not null,
indicencias text, 
fecha datetime,
campo varchar (50) not null,
resultado varchar (20) not null
);

create table if not exists equipo_juega_partido (
id int unsigned primary key auto_increment,
idpartido int unsigned not null,
foreign key (idpartido) references partido (id),
idequipoLocal int unsigned not null,
foreign key (idEquipoLocal) references equipo (id)
on delete no action,
idequipoVisitante int unsigned not null,
foreign key (idEquipoVisitante) references equipo (id)
on delete no action,
fechaPartido datetime not null,
campo varchar (50) not null
);

create table if not exists jugador (
id int unsigned unique primary key auto_increment,
dni varchar (20) not null,
nombre varchar (50) not null,
apellido1 varchar (50) not null,
apellido2 varchar (50),
calleynumero varchar (80) not null,
cp varchar (10) not null,
edad timestamp not null,
idequipo int unsigned not null,
foreign key (idequipo) references equipo (id)
on delete cascade
);

show tables;

alter table jugador drop column apellido2;

alter table equipo_juega_partido add column goles varchar(20);

describe partido;

drop table jugador;
drop table equipo_juega_partido;
drop table partido;
drop table equipo;

drop database if exists torneo ;