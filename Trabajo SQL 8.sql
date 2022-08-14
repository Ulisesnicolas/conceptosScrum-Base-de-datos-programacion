create database Veterinaria;
use Veterinaria;

create table perro (
id_p int,
nom_p varchar(15),
fecha_p date,
sexo_p char(7),
dni_p varchar(10),
constraint pk_cp primary key (id_p)
);

create table perro2 (
id_2 int,
nom_2 varchar(15),
fecha_2 date,
sexo_2 char(7),
dni_2 varchar(10),
constraint pk_c2 primary key (id_2),
constraint fk_f2 foreign key (dni_2) references dueno (dni_d)
);


create table dueno(
dni_d varchar(10),
nom_d varchar(15),
ape_d varchar(15),
tel_d varchar(10),
dir_d varchar(30),
constraint pk_cd primary key (dni_d)
);

create table historial(
id_h int,
nombre_h varchar(50),
fecha_nac_h date,
perro_h varchar(50),
desc_h varchar(50),
monto_h varchar(50),
constraint pk_ch primary key (id_h)
);
